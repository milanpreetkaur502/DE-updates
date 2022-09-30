import subprocess
import json
import time

with open("/etc/entomologist/camera_control.json",'r') as file:
            data=json.load(file)

for (key,value) in data.items():
    #print(k)
    #print(v)
    subprocess.call((f"v4l2-ctl --device /dev/video2 --set-ctrl={key}={value}".split()))
    time.sleep(0.5)

# for json_dict in data:
#     for key,value in json_dict.iteritems():
#         print("key: {0} | value: {0}".format(key, value))
