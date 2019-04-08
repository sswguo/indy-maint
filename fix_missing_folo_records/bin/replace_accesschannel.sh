echo "Replacing access channel:"
cd ../data/

sed -i .bak 's/"accessChannel" : "MAVEN"/"accessChannel" : "MAVEN_REPO"/g' *.json
