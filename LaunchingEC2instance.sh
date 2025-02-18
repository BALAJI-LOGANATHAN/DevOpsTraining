#!/bin/bash

# WebServer Of Linux - Ubuntu 20.04
aws ec2 run-instances \
--image-id "ami-04b4f1a9cf54c11d0" \
--instance-type "t2.micro" \
--count 1 \
--subnet-id "subnet-0e82940247d07783d" \
--security-group-ids "sg-055916604b46003d8" \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=LinuxWebServer},{Key=ProjectID,Value=20220624}]' \
--key-name "SSHKeyPair" \
--user-data file://install-hostname.txt