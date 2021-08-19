#!/bin/bash

# install awscli
pip3 install awscli

# install terraform
sudo wget -q https://releases.hashicorp.com/terraform/1.0.4/terraform_1.0.4_linux_amd64.zip \
&& sudo unzip -o terraform_1.0.4_linux_amd64.zip -d /usr/local/bin \
&& sudo rm terraform_1.0.4_linux_amd64.zip

echo "installed TERRAFORM MY MAN"
# install packer
cd /usr/local/bin
sudo wget -q https://releases.hashicorp.com/packer/0.10.2/packer_0.10.2_linux_amd64.zip
sudo unzip packer_0.10.2_linux_amd64.zip
# clean up
apt-get clean
sudo rm packer_0.10.2_linux_amd64.zip

# restart jenkins service
sudo systemctl restart jenkins