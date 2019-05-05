FROM ubuntu:16.04

MAINTAINER Sara Ersson "sara.ersson@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev && \
    apt-get install -y git

RUN git clone https://github.com/ghodt/demo-app.git /demo-app

WORKDIR /demo-app

RUN pip install -r requirements.txt

EXPOSE 5000
