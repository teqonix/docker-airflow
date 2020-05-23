#!/bin/bash

# Log into the ECR image repository:
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 386210534560.dkr.ecr.us-east-2.amazonaws.com/airflow-dev
docker tag puckel/docker-airflow:latest 386210534560.dkr.ecr.us-east-2.amazonaws.com/airflow-dev
docker push 386210534560.dkr.ecr.us-east-2.amazonaws.com/airflow-dev