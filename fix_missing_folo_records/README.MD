1. Download the generated missing records
2. Tar -xvf the .tar.gz
3. Replace the store key first
   ````
   cd bin
   ./replace_accesschannel.sh
   ````
4. Generated the find commands that can be executed in cloud env
   ````
   cd bin
   python generating_find_commands.py
   ````
5. Exec the find commands in cloud env and grab the output
6. Replacing the data based on the cloud output
   ````
   cd bin
   python replace_remote_with_hosted.py
   ````

transfer: used to rsync the files between local and cloud  
````
oc rsync --progress  $POD:/tmp/file.txt data/
````
