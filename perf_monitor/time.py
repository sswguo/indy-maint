import json
import requests
import os
from time import perf_counter
import numpy as np 
import matplotlib.pyplot as plt

localurl = "localhost:8080"
url = "indy-perf-spmm-automation.apps.ocp4.prod.psi.redhat.com"

r = requests.get('http://' + url + '/api/admin/stores/maven/remote')
r.status_code
#print(r.json())

data = r.json()

groups = list()
durations = list()

t = 0

for i in data['items']:
  print("http://" + url + "/api/admin/maint/store/affected/maven:remote:" + i['name'])
  t1_start = perf_counter()
  r2 = requests.get("http://" + url + "/api/admin/maint/store/affected/maven:remote:" + i['name'])
  t1_stop = perf_counter()
  d2 = r2.json()
  print("affected size:" + str(len(d2))) 
  groups.append(i['name'])
  durations.append(float(t1_stop-t1_start))
  print("Elapsed time in seconds:", t1_stop-t1_start)  
  t = t+1
  print(t)
  if t > 100:
    break
  
print("mean:" + str(np.mean(durations)))
print("var :" + str(np.var(durations)))
print("std :" + str(np.std(durations)))

plt.plot(groups, durations)
plt.show()  

def drawBox(durations):
  plt.boxplot([durations], labels=['Durations'])
  plt.title('Durations Of querying affected groups')
  plt.show()

def drawHist(durations):
  plt.hist(durations, bins=10)
  plt.show()

drawBox(durations)
drawHist(durations)
