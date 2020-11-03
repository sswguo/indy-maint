1. sync the .dat file from server;
2. sync the bak dir from server;
3. run the Main.java with following options to check missing; 
````
load folo-sealed --data-type json /Users/wguo/fix/indy/result.json -i /Users/wguo/fix/indy/infinispan.xml
````
4. insert into the new .dat file for the missing records;
5. run indy locally with the .dat files;
6. export the records.zip from the local indy instance;
7. import the records.zip into the prod indy instance.
````
curl -H "Authorization: Bearer ACCESS_TOKEN"  http://<INDY_INSTANCE>/api/folo/admin/report/import --upload-file export.zip
````
