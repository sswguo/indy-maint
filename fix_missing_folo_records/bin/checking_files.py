import os

DIR="../data/"
OLD_STR='"accessChannel" : "MAVEN"'
NEW_STR='"accessChannel" : "MAVEN_REPO"'

for file in os.listdir(DIR):
  #print file
  with open(DIR+file, 'r+') as f:
    for line in f:
      if OLD_STR in line:
        print file
        break
