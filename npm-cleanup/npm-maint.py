file1 = open('npm-package.log', 'r')
Lines = file1.readlines()
 
count = 0

for line in Lines:
    count += 1
    if 'GET 404' in line:
        # example line: npm http fetch GET 404 http://<INDY_HOST>/api/folo/track/<BUILD_ID>/npm/group/build-ANVVSBL7M3AAA//body-parser/-/body-parser-1.19.0.tgz 98ms
        #print("{}".format(line.strip()[line.strip().index('/-/') + 3:]))
        vinfo = line.strip()[line.strip().index('/-/') + 3:]
        pkg = vinfo[0:vinfo.rindex("-")]
        version = vinfo[vinfo.rindex("-") + 1:vinfo.index('.tgz')]

        print("\"/{}/{}\",".format(pkg, version))
        print("\"/{}/{}\",".format(pkg, "package.json"))
