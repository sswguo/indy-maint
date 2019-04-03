import json
import os

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

DIR="./data/"

count = 0
array = []
subarr = []
for file in os.listdir(DIR):
  if file.endswith('.json'):
    with open(DIR+file, 'r+') as f:
      data = json.load(f)
      for download in data['downloads']:
        if ( "maven:remote:" == download['storeKey'] ):
          print download['localUrl']
          count = count + 1
          path = download['path']
          subparent = path[0:path.rfind('/')]
          if ( path not in array ):
            array.append(path)
          if ( subparent not in subarr ):
            subarr.append(subparent)

print count
print len(array)
print len(subarr)

# construct the linux find command that can be executed on upshift env
#for sub in subarr:
#  print 'find hosted-*' + sub + '/* -name *' + sub[sub.rfind("/")+1:] + '.jar'    

for path in array:
  print 'find hosted-*' + path + ' -name ' + path[path.rfind("/")+1:]
