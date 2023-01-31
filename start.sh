docker run -p 9092:9092 \
-v "$(pwd)"/app:/app \
-v $(pwd)/id_rsa:/sshtunnel_rsa:ro \
-e DFAAS_HOST=<DFaaS Endpoint> \
--rm dfaas-kafka-producer
