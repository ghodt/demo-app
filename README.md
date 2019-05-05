# DevOps demo app

[![Build Status](https://dev.azure.com/emmagood/devops-demo/_apis/build/status/ghodt.demo-app?branchName=master)](https://dev.azure.com/emmagood/devops-demo/_build/latest?definitionId=1&branchName=master)

## Introduction

This is a demo website for the course DD2482 Automated testing and DevOps at KTH. The application uses Azure DevOps to run automated tests, build the application, and deploy it in the cloud. We use Docker to install dependencies and ensure a consistent development environment.

This demo was developed by Emma Good, egood@kth.se and Sara Ersson, saraers@kth.se.

## Getting started

We have set up a Docker container for development that contains Python and Flask. To use the Docker container you need to have Docker installed.

- Fork the repository.
- Download the Docker image with `docker pull ghodt/devops-demo:latest`. 
- To start the container run `docker run -it -p 5000:5000 ghodt/devops-demo`. The flag `-p 5000:5000` maps port 5000 on your local machine to port 5000 in the container (`-p hostPort:containerPort`). The host port can be changed if wanted.
- When the container has started, clone your fork of the repo into the container with `git clone <link to fork>`.
- Start developing!

## During development

When developing, the application can be previewed by running `python app.py` which starts the Flask server in the container.

The website can be accessed on your local machine by browsing to `localhost:5000` in your browser.

To run the tests, navigate to the tests folder and run `py.test`.

## CI/CD

The application is deployed with Microsoft Azure. When a push is made to the repository it will run the test automatically, build the application, and deploy it to the [demo site](https://devops-demo-emma-sara.azurewebsites.net/).
