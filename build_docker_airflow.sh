#!/bin/bash

docker build --rm --build-arg AIRFLOW_DEPS="postgres,aws" -t puckel/docker-airflow .