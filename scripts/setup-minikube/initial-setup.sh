#!/bin/bash
eval $(minikube docker-env)

minikube -p minikube docker-env | Invoke-Expression
cd ./client/
docker build -t client:0.1 -f ./Dockerfile .
cd ..
cd ./server
docker build -t auth-server:0.1 -f ./Dockerfile .
cd ..

cd ./scripts/service-yamls
kubectl apply -f ./
cd ..
cd ..