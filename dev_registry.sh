#!/bin/bash

prov_status=NULL
prov_status=$(cat /etc/entomologist/ento.conf | jq  '.device .PROVISION_STATUS' | tr -d '"')
#echo $prov_status

device_id=NULL
device_id=$(cat /etc/entomologist/ento.conf | jq  '.device .SERIAL_ID' | tr -d '"')
#echo $device_id

if [[ $prov_status != "True" ]]
then
    #echo $prov_status

    #serial id of device
    serial_id=$(cat /proc/device-tree/serial-number)
    #echo $serial_id

    url='https://4k5m4b6lha.execute-api.us-east-1.amazonaws.com/deviceid?serial_id='$serial_id
        
    resp=NULL
    resp=$(curl -s --connect-timeout 10  $url | jq '.device_id' | tr -d '"')
    echo $resp

    if [[ $resp != $device_id ]]
    then
        test=$(jq --arg ser_id $resp '.device .SERIAL_ID |= $ser_id ' /etc/entomologist/ento.conf)
        echo $test | jq . > /etc/entomologist/ento.conf
        test=$(jq --arg ser_id $resp '.device .NAME |= $ser_id' testfile)
        echo $test | jq . > /etc/entomologist/ento.conf

        sed -i -e "s/hotspotde/${resp}/g" /etc/hostapd-de-ap.conf  

    else
        echo "Serial ID already set"
        
    fi

else
    echo "Device is already provisioned"

fi
