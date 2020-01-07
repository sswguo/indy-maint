package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
)

/* Checking maven metadata: go run content_browse.go localhost:8080 */
func main() {
	indyHost := os.Args[1]

	repoType := "hosted"
	repo := "pnc-builds"
	path := "/org/jbpm/jbpm-wb/maven-metadata.xml"

	url := fmt.Sprintf("http://%s/api/%s/%s%s", indyHost, repoType, repo, path)

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
