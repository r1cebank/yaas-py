FROM python:alpine3.6

LABEL maintainer="siyuangao@gmail.com"

RUN apk add --no-cache \
        alpine-sdk \
        linux-headers

COPY ./src /app

WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt

RUN pip install uwsgi

RUN apk del alpine-sdk linux-headers

EXPOSE 8080

ENTRYPOINT ["uwsgi", "--http", "0.0.0.0:8080", "--module", "main:app", "--processes", "1", "--threads", "8", "--master"]