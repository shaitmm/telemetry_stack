This repo is meant to server as a base level telemetry stack for Go Fast demos.


# How To Use in your project
## Option 1 (Easiest) - Map files into containers
1. Either Fork or Clone this repo and copy the contents into your project
2. Alter ```pipeline/metrics.json``` to reflect what you want to monitor
6. Run Containers ```docker-compose up```
7. Log into grafana ```http://localhost:3000```
8. Build Grafana Dashboard to your liking and Save

We've mapped ```pipeline/metrics.json``` into the pipeline folder at runtime, so you can use the default gofast/telemetry-base-pipeline image.

We've also mapped ```grafana/``` into the grafana container so we do not need to rebuild the container each time we make changes to graphs etc.



The full Grafana config will be kept in the ```grafana``` folder, so keep this embeded in your projects as now its part of it.

To make alterations to how pipeline does provisions InfluxDB alter the ```pipeline/startup.sh``` file.
