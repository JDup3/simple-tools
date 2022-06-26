FROM  python:3.10.5-alpine3.16

WORKDIR /app

COPY ../requirements.txt ./
COPY ../requirements_dev.txt ./

RUN pip3 install -r requirements.txt && \
    pip3 install -r requirements_dev.txt