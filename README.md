# Udacity Cloud DevOps Nanodegree - Project 4 - Operationalizing a Machine Learning Microservice API

[![CircleCI](https://circleci.com/gh/henokhm/udacity-cloud-devops-project-4.svg?style=svg)](LINK)

## Summary

This project deploys a serialized Machine Learning model using Docker and Kubernetes. We have a simple Flask app that accepts requests and returns predictions made by the model.

## Running the Scripts

1. To setup and start the project, run the commands in the Makefile. You can run:

- `make setup` to create virtual
- `make install` to install all dependencies
- `make lint` to run hadolint and pylint

2. To build a Docker image and run it in a container, run the **`run_docker.sh`** script.

3. To build a Kubernetes cluster locally, run the **`run_kubernetes.sh`** script.

4. To test if deployment worked, run **`make_prediction.sh`**. This will send a request to the appropriate port and returns the response.

## Other files and folders:

- **`.circleci/config.yml`**: Configuration file for CircleCI build.
- **`model_data/boston_housing_prediction.joblib `** and **`housing.csv`** : files for pretrained model
- **`outut_text_files/`**: Contains sample log outputs
- **`app.py`**: Simple Flask app that takes requests from user and passes them to the Machine Learning model to make predictions.
- **`Dockerfile`**: used by Docker to build a Docker image
- **`requirements.txt`**: Lists all Python dependencies
- **`upload_docker.sh`**: Contains commands to upload the Docker Image to Docker Hub
