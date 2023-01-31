# Instructions

Dockerize a video feed to a HPE DFaaS Topic

## Edits

* In ```/app/producer.py ``` verify topic is correct for your DFaaS
* In ```build.sh``` and ```start.sh``` modify ```lima nerctl``` to ```docker```
* In ```start.sh``` add your DFaaS user and IP to ```DFAAS_HOST``` env variable
* Add your ```id_rsa``` file to root of project


## Build and run 

```sh
./build.sh

```

```sh
./start.sh

```

## Data will start to be produced into your topic
