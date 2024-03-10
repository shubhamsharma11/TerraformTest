#!/bin/bash

# Update
sudo apt update -y
#sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y
sudo apt update -y 
sudo apt install docker-ce -y 
sudo groupadd docker
sudo usermod -aG docker azureuser
echo "Starting docker"
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 666 /var/run/docker.sock
sudo systemctl restart docker

echo "Setting selinux"
sudo setenforce 0
sudo sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/sysconfig/selinux
sudo swapoff -a
sudo sed -e '/swap/s/^/#/g' -i /etc/fstab


# Install Az CLI
sudo apt-get install -y ca-certificates curl apt-transport-https lsb-release gnupg -y 
# Download and add the Microsoft signing key
curl -sL https://packages.microsoft.com/keys/microsoft.asc | \
    gpg --dearmor | \
    sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null
# Add the Azure CLI repository
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
    sudo tee /etc/apt/sources.list.d/azure-cli.list
# Update the package index again and install the Azure CLI
sudo apt-get update -y
sudo apt-get install -y azure-cli

# Install kubectl
echo "Installing Kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
#Validate the binary 
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl



