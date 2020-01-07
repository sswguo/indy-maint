package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"strings"
)

type LookUpReq struct {
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

/*
 Lookup the match versions
*/
func main() {
	daHost := os.Args[1]
	gav := os.Args[2]

	params := BeforePost(gav)

	url := fmt.Sprintf("http://%s/da/rest/v-1/reports/lookup/gavs", daHost)
	body := Post(url, params)
	AfterPost(body)
}

/**
 * {
	"repositoryGroup":"DA",
	"versionSuffix":"",
	"gavs":[
		{
			"groupId":"org.jbpm",
			"artifactId":"jbpm-wb",
			"version":"7.30.0.Final"
		}
	]
}
*/
func BeforePost(gav string) interface{} {
	gavSlices := strings.Split(gav, ":")

	groupID := gavSlices[0]
	artifactID := gavSlices[1]
	version := gavSlices[2]

	return &LookUpReq{
		RepositoryGroup: "DA",
		//VersionSuffix:   "",
		Gavs: []Gavs{
			{
				GroupId:    groupID,
				ArtifactId: artifactID,
				Version:    version,
			},
		},
	}
}

/* Basic marshal and http request operation */
func Post(url string, params interface{}) []byte {

	request, err := json.Marshal(params)
	if err != nil {
		log.Fatalln(err)
	}

	fmt.Println(string(request))

	resp, err := http.Post(url, "application/json", bytes.NewBuffer(request))
	if err != nil {
		log.Fatalln(err)
	}

	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatalln(err)
	}

	return body
}

func AfterPost(body []byte) {
	var result []Versions

	json.Unmarshal(body, &result)

	//log.Println(result[0].BestMatchVersion)
	jsonResult, err := json.MarshalIndent(result, "", "\t")
	if err != nil {
		log.Fatalln(err)
	}
	log.Println(string(jsonResult))
}
