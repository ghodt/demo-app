FROM ubuntu:16.04

MAINTAINER Sara Ersson "sara.ersson@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
