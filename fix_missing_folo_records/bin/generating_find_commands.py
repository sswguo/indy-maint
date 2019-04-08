import json
import os
import time

# picking the path up if the storeKey is "maven:remote:", see following examples:
# 
# {
#    "storeKey" : "maven:remote:",
#    "accessChannel" : "MAVEN_REPO",
#    "path" : "/org/jboss/shrinkwrap/descriptors/shrinkwrap-descriptors-api-base/2.0.0.redhat-2/shrinkwrap-descriptors-api-base-2.0.0.redhat-2.jar",
#    "originUrl" : "",
#    "localUrl" : "http://indy.psi.redhat.com/api/content/maven/remote//org/jboss/shrinkwrap/descriptors/shrinkwrap-descriptors-api-base/2.0.0.redhat-2/shrinkwrap-descriptors-api-base-2.0.0.redhat-2.jar",
#    "md5" : "b6d3b560984866dac9d171ead2020692",
#    "sha256" : "927df9d739261aeac4f1f1dcb90fc64165e01fd113552e92d052062560eed5d6",
#    "sha1" : "c5328b6680f161fb007dab7315036a079e873899",
#    "size" : 17614
# }

#DIR="../data/"
DIR="../data/replaced-1554699433455/replaced-1554700727934/"
BIN_DIR="./"
count = 0
array = []
subarr = []
for file in os.listdir(DIR):
  if file.endswith('.json'):
    with open(DIR+file, 'r+') as f:
      data = json.load(f)
      try:
        for download in data['downloads']:
          if ( "maven:remote:" == download['storeKey'] ):
            #print download['localUrl']
            count = count + 1
            path = download['path']
            subparent = path[0:path.rfind('/')]
            if ( path not in array ):
              array.append(path)
            if ( subparent not in subarr ):
              subarr.append(subparent)
      except TypeError:
        print file

print count
print len(array)
print len(subarr)

# construct the linux find command that can be executed on upshift env
#for sub in subarr:
#  print 'find hosted-*' + sub + '/* -name *' + sub[sub.rfind("/")+1:] + '.jar'    

milliseconds = int(round(time.time() * 1000))

FIND_FILE = "find_command_" + str(milliseconds) + ".sh"
  #print 'find hosted-*' + path + ' -name ' + path[path.rfind("/")+1:]
with open(BIN_DIR+FIND_FILE, 'a') as w:
  w.truncate(0)
  w.write('cd /var/lib/indy/storage/maven\n')
  w.write('echo "["\n')
  for path in array:
    w.write('echo "{"\n')
    w.write('echo "\\"path\\":\\"' + path + '\\","\n') 
    #w.write('echo "\\"repo\\":\\"$(find hosted-build_*' + path + ' -name ' + path[path.rfind("/")+1:] + '| head -n 1)\\""\n')
    w.write('echo "\\"repo\\":\\"$(find hosted-*' + path + ' -name ' + path[path.rfind("/")+1:] + '| head -n 1)\\""\n')
    w.write('echo "}",\n')
  w.write('echo "]"\n')
