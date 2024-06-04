#!/bin/bash

cd /etc/yum.repos.d/
sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
sudo yum update -y
yum install ansible python3.12-pip.noarch -y &>>/opt/userdata.log
pip3.12 install botocore boto3
ansible-pull -i localhost, -U https://github.com/Revanthsatyam/roboshop-ansible.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log