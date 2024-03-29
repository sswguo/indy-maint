package main

import (
	"bufio"
	"crypto/tls"
	"crypto/x509"
	"io/ioutil"
	"fmt"
	"net/http"
	"os"
	"time"
	"io"
	"path/filepath"
	"strings"
)

func main() {
	endpoints := []string{"url"}

	urls, err := readURLsFromFile("urls.txt")
	if err != nil {
		fmt.Println("Error reading URLs:", err)
		return
	}

	// Create a HTTP client with TLS configuration that skips verification
	client := &http.Client{
		Transport: &http.Transport{
			TLSClientConfig: &tls.Config{InsecureSkipVerify: true},
		},
	}

	// Load the certificate
	 cert, err := ioutil.ReadFile("2022-IT-Root-CA.pem")
	 if err != nil {
		fmt.Println("Error reading certificate:", err)
		return
	}
	certPool := x509.NewCertPool()
	certPool.AppendCertsFromPEM(cert)

	// Create a HTTP client with the certificate
	sec_client := &http.Client{
		Transport: &http.Transport{
			TLSClientConfig: &tls.Config{
				RootCAs: certPool,
			},
		},
	}

	for _, url := range urls {
		speeds := make([]string, len(endpoints))
		durations := make([]time.Duration, len(endpoints))
		for k, endpoint := range endpoints {
			remoteUrl := endpoint + url
			fmt.Printf("Downloading %s \n", remoteUrl)
			var s_client *http.Client
			if strings.HasPrefix(endpoint, "https://") {
				s_client = sec_client
			} else {
				s_client = client
			}

			duration, statusCode, speed, err := fetchURL(s_client, remoteUrl)
			if err != nil {
				fmt.Printf("Error fetching %s: %v\n", remoteUrl, err)
				continue
			}

			var downloadSpeed string
			if speed < 1024 {
				downloadSpeed = fmt.Sprintf("%.2f KB/s", speed)
			} else {
				downloadSpeed = fmt.Sprintf("%.2f M/s", speed / 1024)
			}

			fmt.Printf("Downloaded %s (%s), Status: %s, Duration: %v, \n", remoteUrl, downloadSpeed, statusCode, duration)

			durations[k] = duration
			speeds[k] = fmt.Sprintf("%s", downloadSpeed)
		}

		fmt.Println("Speeds:", speeds)
		fmt.Println("Durations:", durations)
		fmt.Printf("File Path: %s \n\n", url)
	}
}

func readURLsFromFile(filename string) ([]string, error) {
	var urls []string

	file, err := os.Open(filename)
	if err != nil {
		return nil, err
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		urls = append(urls, scanner.Text())
	}

	if err := scanner.Err(); err != nil {
		return nil, err
	}

	return urls, nil
}

func fetchURL1(url string) (time.Duration, string, error) {
	start := time.Now()
	resp, err := http.Get(url)
	if err != nil {
		return 0, "", err
	}
	defer resp.Body.Close()

	// Create a file to save the response body
	fileName := filepath.Base(url) + "_" + time.Now().Format("20060102150405") + ".jar"
	file, err := os.Create(fileName)
	if err != nil {
		return 0, "", err
	}
	defer file.Close()

	// Copy the response body to the file
	_, err = io.Copy(file, resp.Body)
	if err != nil {
		return 0, "", err
	}

	duration := time.Since(start)
	return duration, resp.Status, nil
}

func fetchURL(client *http.Client, url string) (time.Duration, string, float64, error) {
	start := time.Now()
	resp, err := client.Get(url)
	if err != nil {
		return 0, "", 0, err
	}
	defer resp.Body.Close()

	// Create a file to save the response body
	fileName := filepath.Base(url) + "_" + time.Now().Format("20060102150405") + ".jar"
	file, err := os.Create(fileName)
	if err != nil {
		return 0, "", 0, err
	}
	defer file.Close()

	// Copy the response body to the file
	size, err := io.Copy(file, resp.Body)
	if err != nil {
		return 0, "", 0, err
	}

	duration := time.Since(start)

	speed := float64(size)/(float64(duration)/float64(time.Second))/1024
	
	return duration, resp.Status, speed, nil
}