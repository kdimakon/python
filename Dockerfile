FROM python:3.7.2-alpine3.8

LABEL maintainer="kdimakon@yandex.com"

WORKDIR /usr/src/my_app

RUN apk update && apk upgrade && apk add bash

COPY script.py .

ENTRYPOINT ["python", "./script.py"]

EXPOSE 8000
