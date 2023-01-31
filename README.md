# Instructions

Dockerize a video feed to a HPE DFaaS Topic  
Based on [kafka-face-detection](https://github.com/ajgoade/kafka-face-detection)  
Consumer companion project can be found here [dfaas-kafka-consumer](https://github.com/ajgoade/dfaas-kafka-consumer)

## Edits

* In ```/app/producer.py ``` verify topic is correct for your DFaaS
* In ```start.sh``` add your DFaaS Endpoint to ```DFAAS_HOST``` env variable
* Add your ```id_rsa``` file to root of project


## Build and run 

```sh
./build.sh

```

```sh
./start.sh

```

## Data will start to be produced into your topic
