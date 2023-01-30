docker run -p 9092:9092 \
-v "$(pwd)"/app:/app \
-v $(pwd)/id_rsa:/sshtunnel_rsa:ro \
-e DFAAS_HOST=<your dfaas user>@<your dfaas ip> \
--rm vid_prod_container
