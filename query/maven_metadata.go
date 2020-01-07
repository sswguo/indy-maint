package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"strings"
)

/* Checking maven metadata: go run maven_metadata.go localhost:8080 org.jbpm:jbpm-wb:7.30.0.Final */
func main() {
	indyHost := os.Args[1]
	gav := os.Args[2]

	gavSlices := strings.Split(gav, ":")

	groupPath := strings.Replace(gavSlices[0], ".", "/", 1)
	artifactID := gavSlices[1]

	repoType := "hosted"
	repo := "pnc-builds"

	url := fmt.Sprintf("http://%s/api/%s/%s/%s/%s/maven-metadata.xml", indyHost, repoType, repo, groupPath, artifactID)

	fmt.Println(url)

	resp, err := http.Get(url)
	if err != nil {
		log.Fatalln(err)
	}

	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatalln(err)
	}

	fmt.Println(string(body))

}
