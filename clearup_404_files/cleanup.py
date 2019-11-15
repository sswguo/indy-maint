import os
import sys

# python cleanup.py <rootdir>

rootdir = sys.argv[1]
search_str = "\"responseStatusCode\" : 404"
extension = ".http-metadata.json"

for root, subdirs, files in os.walk(rootdir):
  for file_name in files:
    if file_name.endswith(extension):
      file_path = os.path.join(root, file_name)
      with open(file_path) as f:
        if search_str in f.read():
          print file_path
          #os.remove(file_path)
