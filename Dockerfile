FROM python:3.7-alpine
MAINTAINER App Developer Abhi

ENV PYTHONUNBUFFERED 1

COPY ./reqiurements.txt /reqiurements.txt
RUN pip install -r /reqiurements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app
Expose 8080

RUN adduser -D user
USER user
