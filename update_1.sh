#!/bin/sh

systemctl stop rana
systemctl stop devicemgr
systemctl stop jobreceiver
systemctl stop gps

rm /usr/sbin/device-manager/DeviceManager/app.py
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/app.py -O /usr/sbin/device-manager/DeviceManager/app.py
chmod 755 /usr/sbin/device-manager/DeviceManager/app.py

rm /usr/sbin/device-manager/DeviceManager/templates/Dashboard.html
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/templates/Dashboard.html -O /usr/sbin/device-manager/DeviceManager/templates/Dashboard.html
chmod 755 /usr/sbin/device-manager/DeviceManager/templates/Dashboard.html


rm /usr/sbin/device-manager/DeviceManager/templates/files.html
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/templates/files.html  -O /usr/sbin/device-manager/DeviceManager/templates/files.html
chmod 755 /usr/sbin/device-manager/DeviceManager/templates/files.html


rm /usr/sbin/device-manager/DeviceManager/templates/videoFeed.html
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/templates/videoFeed.html -O /usr/sbin/device-manager/DeviceManager/templates/videoFeed.html
chmod 755 /usr/sbin/device-manager/DeviceManager/templates/videoFeed.html


rm /usr/sbin/device-manager/DeviceManager/templates/configurations.html
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/templates/configurations.html -O /usr/sbin/device-manager/DeviceManager/templates/configurations.html
chmod 755 /usr/sbin/device-manager/DeviceManager/templates/configurations.html

wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/job_data.sh -O /usr/sbin/device-manager/DeviceManager/job_data.sh
chmod 755 /usr/sbin/device-manager/DeviceManager/job_data.sh

wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/cellular.sh -O /usr/sbin/device-manager/DeviceManager/cellular.sh
chmod 755 /usr/sbin/device-manager/DeviceManager/cellular.sh

wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/storage_state.sh -O /usr/sbin/device-manager/DeviceManager/storage_state.sh
chmod 755 /usr/sbin/device-manager/DeviceManager/storage_state.sh

wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/DeviceManager/render.mp4 -O /usr/sbin/device-manager/DeviceManager/render.mp4
chmod 755 /usr/sbin/device-manager/DeviceManager/render.mp4

rm /usr/sbin/rana/rana.sh
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/rana/rana.sh  -O /usr/sbin/rana/rana.sh
chmod 755 /usr/sbin/rana/rana.sh

wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/rana/remove.sh  -O /usr/sbin/rana/remove.sh
chmod 755 /usr/sbin/rana/remove.sh

rm /lib/systemd/system/rana.service
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/rana.service -O /lib/systemd/system/rana.service
chmod 644 /lib/systemd/system/rana.service

#rm /etc/entomologist/ento.conf
#wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/ento.conf -O /etc/entomologist/ento.conf
#chmod 755 /etc/entomologist/ento.conf

rm /etc/entomologist/camera_control.conf
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/camera_control.conf -O /etc/entomologist/camera_control.conf
chmod 755 /etc/entomologist/camera_control.conf


mkdir /usr/sbin/camera
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/camera/cam_set.py -O /usr/sbin/camera/cam_set.py
chmod 755 /usr/sbin/camera/cam_set.py


wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/cam_set.service -O /lib/systemd/system/cam_set.service
chmod 644 /lib/systemd/system/cam_set.service

rm /usr/sbin/jobreceiver/jobReceiver.py
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/jobReceiver.py -O /usr/sbin/jobreceiver/jobReceiver.py
chmod 755 /usr/sbin/jobreceiver/jobReceiver.py


rm /usr/sbin/gps/gps.sh
wget https://raw.githubusercontent.com/milanpreetkaur502/DE-updates/main/gps.sh -O /usr/sbin/gps/gps.sh
chmod 755 /usr/sbin/gps/gps.sh

systemctl start devicemgr
systemctl start jobreceiver
systemctl start gps

