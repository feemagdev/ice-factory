FROM alpine:3.13

LABEL key = "name" FaheemRiaz
ENV PYTHONUNBUFFERED 1
RUN apk update
RUN apk add py-pip
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

