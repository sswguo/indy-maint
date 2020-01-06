package http

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
)

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

	log.Println(body)
	return body
}
