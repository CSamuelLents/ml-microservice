# Operationalized ML Microservice

[![CircleCI](https://circleci.com/gh/CSamuelLents/ml-microservice/tree/main.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs/tree/main)

## Project Overview

This project contains a pre-trained `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). The app can be run in Docker and deployed to Kubernetes.

A simple CI process is set up to lint the `Dockerfile` and `app.py` files on commit.

---

## Setup the Environment

- Create a virtualenv and activate it
  - `python3 -m venv ~/.ml-microservice && source ~/.ml-microservice/bin/activate`
- Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`
4. Make a prediction `./make_prediction.sh`

### Upload Docker image to DockerHub

`./upload_docker.sh`
