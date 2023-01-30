FROM python:3.9

ENV DASH_DEBUG_MODE True
#added cor cv2
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
COPY ./app /app
WORKDIR /app
RUN set -ex && \
    pip install -r requirements.txt

EXPOSE 9092
ENTRYPOINT ssh -4 -q -o StrictHostKeyChecking=no -i /sshtunnel_rsa \
-L 9092:localhost:9092 \
-fN \
$DFAAS_HOST \
&& python producer.py