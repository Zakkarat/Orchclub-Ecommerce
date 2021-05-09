#!/bin/bash
eval $(minikube docker-env)

minikube -p minikube docker-env | Invoke-Expression
cd ./client/
docker build -t client:0.1 -f ./Dockerfile .
cd ..
cd ./db-service
docker build -t db-server:0.1 -f ./Dockerfile .
cd ..
cd ./server
docker build -t auth-server:0.1 -f ./Dockerfile .
cd ..
cd ./orchid-service
docker build -t orchid-server:0.1 -f ./Dockerfile .
cd ..
cd ./user-service
docker build -t user-server:0.1 -f ./Dockerfile .
cd ..

cd ./scripts/service-yamls
kubectl apply -f ./
cd ..
cd ..


cat orchids_dump.sql | kubectl exec -i postgres-84ff4497db-qzldw -- psql -U uxbuvhokbbocan -d dbit7n0ojntpd7
