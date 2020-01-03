package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
)

type Folo struct {
	Key     string     `json:"key"`
	Uploads []FilePath `json:"uploads"`
}

type FilePath struct {
	StoreKey string `json:"storeKey"`
	Path     string `json:"path"`
}

func main() {
	host := os.Args[1]
	buildId := os.Args[2]

	fmt.Println(buildId)

	url := fmt.Sprintf("http://%s/api/folo/admin/%s/record", host, buildId)

	fmt.Println(url)

	resp, err := http.Get(url)
	if err != nil {
		log.Fatalln(err)
	}

	var result Folo

	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatalln(err)
	}

	json.Unmarshal(body, &result)

	jsonResult, err := json.MarshalIndent(result.Uploads, "", "\t")
	if err != nil {
		log.Fatalln(err)
	}
	log.Println(string(jsonResult))

	fmt.Println(len(result.Uploads))

	var paths []string
	for i := range result.Uploads {
		temp := result.Uploads[i].Path
		fmt.Println(temp)
		paths = append(paths, temp)
	}

	pathsJson, _ := json.Marshal(paths)
	fmt.Println(string(pathsJson))
}
