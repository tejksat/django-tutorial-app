FROM python:3.8.5-alpine

RUN apk add --no-cache postgresql-dev gcc musl-dev

ENV PROJECT_DIR=/opt/django-tutorial-app

ADD . ${PROJECT_DIR}
WORKDIR ${PROJECT_DIR}

RUN pip3 install -r requirements.txt