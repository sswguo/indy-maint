package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
)

type ListingUrls struct {
	Path string `json:"path"`
}

type Result struct {
	StoreKey    string        `json:"storeKey"`
	Path        string        `json:"path"`
	ListingUrls []ListingUrls `json:listingUrls`
}

/* go run content_browse.go localhost:8080 /org/commonjava/cdi/util/weft/1.16-SNAPSHOT/ */
func main() {
	host := os.Args[1]
	path := os.Args[2]

	fmt.Println(path)

	url := fmt.Sprintf("http://%s/api/browse/maven/hosted/pnc-builds%s", host, path)

	fmt.Println(url)

	resp, err := http.Get(url)
	if err != nil {
		log.Fatalln(err)
	}

	var result Result

	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatalln(err)
	}

	json.Unmarshal(body, &result)

	jsonResult, err := json.MarshalIndent(result.ListingUrls, "", "\t")
	if err != nil {
		log.Fatalln(err)
	}
	log.Println(string(jsonResult))

	fmt.Println(len(result.ListingUrls))

	var paths []string
	for i := range result.ListingUrls {
		temp := result.ListingUrls[i].Path
		paths = append(paths, temp)
	}

	pathsJson, _ := json.MarshalIndent(paths, "", "\t")
	fmt.Println(string(pathsJson))
}
