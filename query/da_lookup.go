package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
)

type LookUp struct {
	RepositoryGroup string `json:"repositoryGroup"`
	VersionSuffix   string `json:"versionSuffix"`
	Gavs            []Gavs `json:"gavs"`
}

type Gavs struct {
	GroupId    string `json:"groupId"`
	ArtifactId string `json:"artifactId"`
	Version    string `json:"version"`
}

type Versions struct {
	GroupId           string   `json:"groupId"`
	ArtifactId        string   `json:"artifactId"`
	Version           string   `json:"version"`
	BestMatchVersion  string   `json:"bestMatchVersion"`
	AvailableVersions []string `json:"availableVersions"`
	Blacklisted       bool     `json:blacklisted`
	Whitelisted       []string `json:whitelisted`
}

func main() {
	url := "http://<DA.HOST>/da/rest/v-1/reports/lookup/gavs"

	params := &LookUp{
		RepositoryGroup: "DA",
		//VersionSuffix:   "",
		Gavs: []Gavs{
			{
				GroupId:    "org.jbpm",
				ArtifactId: "jbpm-wb",
				Version:    "7.30.0.Final",
			},
		},
	}

	request, err := json.Marshal(params)
	if err != nil {
		log.Fatalln(err)
	}

	fmt.Println(string(request))

	resp, err := http.Post(url, "application/json", bytes.NewBuffer(request))
	if err != nil {
		log.Fatalln(err)
	}

	var result []Versions

	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatalln(err)
	}

	json.Unmarshal(body, &result)

	//log.Println(result[0].BestMatchVersion)
	jsonResult, err := json.MarshalIndent(result, "", "\t")
	if err != nil {
		log.Fatalln(err)
	}
	log.Println(string(jsonResult))

}
