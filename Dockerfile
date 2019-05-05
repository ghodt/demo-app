FROM ubuntu:16.04

MAINTAINER Sara Ersson "sara.ersson@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev && \
    apt-get install -y git

RUN pip install Flask

EXPOSE 5000
