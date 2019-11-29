### Script to cleanup the http metadata files for 404 status

````
python cleanup.py <rootdir>

python cleanup.py .
./maven-metadata.xml.http-metadata.json
./sub/maven-metadata.xml.http-metadata.json
````

### Shell
````
./clear_http_metadata.sh -d /opt/indy/var/lib/indy/storage/maven/remote-*
````

### Note
How to rsync the files into openshift pods
````
oc rsync --progress script/ $POD:/opt/indy/
````
