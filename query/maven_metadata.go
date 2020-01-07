package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"strings"
)

/* Checking maven metadata against group pnc-builds and DA: 
   
   go run maven_metadata.go localhost:8080 org.jbpm:jbpm-wb:7.30.0.Final 
	
*/
func main() {
	indyHost := os.Args[1]
	gav := os.Args[2]

	gavSlices := strings.Split(gav, ":")

	groupPath := strings.Replace(gavSlices[0], ".", "/", 1)
	artifactID := gavSlices[1]

	pncBuildsURL := fmt.Sprintf("http://%s/api/group/pnc-builds/%s/%s/maven-metadata.xml", indyHost, groupPath, artifactID)

	printXMLResp(pncBuildsURL)

	daURL := fmt.Sprintf("http://%s/api/group/DA/%s/%s/maven-metadata.xml", indyHost, groupPath, artifactID)

	printXMLResp(daURL)

}

func printXMLResp(url string){
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
