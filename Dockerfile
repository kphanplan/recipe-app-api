# selected image from hub.docker.com
FROM python:3.7-alpine
MAINTAINER KPhan

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

# creates an empty directory app, sets as default
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# adds a user to run applications only (-D)
RUN adduser -D user
USER user
