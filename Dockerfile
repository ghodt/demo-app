FROM ubuntu:16.04

MAINTAINER Sara Ersson "sara.ersson@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev && \
    apt-get install -y git

# Install Flask
RUN pip install Flask

# Install pytest
RUN pip install pytest

# Expose port 5000 in the container
EXPOSE 5000
