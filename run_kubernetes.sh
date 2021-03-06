#!/usr/bin/env bash

# Step 1:
dockerpath=csamuellents/ml-microservice

# Step 2
kubectl create deployment ml-microservice --image="$dockerpath:latest"

# Step 3:
kubectl get pods --output wide

# Step 4:
kubectl expose deployment/ml-microservice --type="NodePort" --port=80
kubectl port-forward deployment/ml-microservice 8000:80
