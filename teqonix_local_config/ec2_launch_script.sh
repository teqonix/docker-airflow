#!/bin/bash

#Get AWs ECS client running:
sudo yum update -y
sudo amazon-linux-extras disable docker
sudo amazon-linux-extras install -y ecs; sudo systemctl enable --now ecs

#Install git
sudo yum --assumeyes install git

# Will need to format the attached EBS volume on first-time create: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-using-volumes.html
sudo mkfs -t xfs /dev/xvdb # How do we know what this is at runtime?
sudo mkdir /usr/local/airflow
sudo mount /dev/sdb /usr/local/airflow