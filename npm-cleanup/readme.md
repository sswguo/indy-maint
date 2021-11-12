Parse the paths from the log file via running the python script, paste the paths to the following: 

```
{
  "storeKey": {
    "packageType": "npm",
    "type": "hosted",
    "name": "shared-imports"
  },
  "paths": 
  [
    "/@babel/helper-optimise-call-expression/7.14.5"
  ]
}
```

Then exec the following command against indy api:
```
curl -X POST --header 'Content-Type: application/json' -H 'Authorization: Bearer ' --header 'Accept: application/json' -d @batch_delete_package.json http://<INDY_HOST>/api/admin/maint/content/batch/delete
```
