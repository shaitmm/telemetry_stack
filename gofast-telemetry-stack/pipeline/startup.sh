#! /bin/bash

curl -G http://$influx_ip:$influx_port/query --data-urlencode 'q=CREATE DATABASE "demo1" WITH DURATION 1d'
curl -G http://$influx_ip:$influx_port/query?q=CREATE+USER+%22cisco%22+WITH+PASSWORD+'cisco'&db=_internal
curl -G http://$influx_ip:$influx_port/query --data-urlencode 'q=GRANT ALL ON demo1 TO cisco'
./pipeline -config=data/config/pipeline.conf_REWRITTEN -pem=./id_rsa -log= -debug
