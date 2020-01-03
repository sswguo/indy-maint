### Rollback the promotion

This can be appied for the case that the promotion just delivered the artifacts partially due to network/timeout issue. 

Figure out the hosted build id and the artifact list that had been promoted, and list the paths into the following request:

````
{

    "request" : {
      "async" : false,
      "promotionId" : "c35d81e3-04f3-4c92-a8d1-a238316d0a38",
      "source" : "maven:hosted:build-38527",
      "target" : "maven:hosted:pnc-builds",
      "paths" : [],
      "purgeSource" : false,
      "dryRun" : false,
      "fireEvents" : false,
      "failWhenExists" : false,
      "targetKey" : "maven:hosted:pnc-builds"
    },
    "completedPaths":
    [

        "/org/jbpm/jbpm-wb-common-client/7.30.0.Final-redhat-00003/jbpm-wb-common-client-7.30.0.Final-redhat-00003.jar.md5",
        "/org/jbpm/jbpm-wb-dashboard-backend/7.30.0.Final-redhat-00003/jbpm-wb-dashboard-backend-7.30.0.Final-redhat-00003-sources.jar.md5",
        "/org/jbpm/jbpm-wb-dashboard-backend/7.30.0.Final-redhat-00003/jbpm-wb-dashboard-backend-7.30.0.Final-redhat-00003-test-sources.jar.md5",
        "/org/jbpm/jbpm-wb-dashboard-backend/7.30.0.Final-redhat-00003/jbpm-wb-dashboard-backend-7.30.0.Final-redhat-00003-tests.jar.md5"
    ]
}
````

Then run the rollback REATAPI to complete it:

````
curl -X POST --header 'Content-Type: application/json' -H 'Authorization: Bearer <Token>' --header 'Accept: application/json' -d @rollback_38527.json 'http://localhost:8080/api/promotion/paths/rollback'
````