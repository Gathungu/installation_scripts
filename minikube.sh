#!/bin/bash

# Make sure you have kubectl installed. If not, you can install it via the terminal:

sudo apt-get update && sudo apt-get install -y kubectl

#Ensure that curl is also installed:



# Installing Minikube:
# Step 1: Install VirtualBox (if not already installed)

sudo apt-get update
sudo apt-get install -y virtualbox virtualbox-ext-pack

# Step 2: Install Minikube
# Download the latest version of Minikube using curl:
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
&& chmod +x minikube && sudo mv minikube /usr/local/bin/

# Step 3: Start Minikubesudo apt-get update && sudo apt-get install -y curl
# Begin Minikube with the following command, setting VirtualBox as the VM driver:

minikube start - vm-driver=virtualbox

# 2. Confirm the start & status of your Minikube cluster:

minikube start 
minikube status


##############################################################################################################################
OLD CODE
##############################################################################################################################
sudo apt-get update -y

sudo apt-get install curl wget apt-transport-https virtualbox virtualbox-ext-pack -y

echo "1st install docker"

sudo apt update && apt -y install docker.io

sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 666 /var/run/docker.sock

echo "Apply updates"
sudo apt update -y 
sudo apt upgrade -y

echo " Download Minikube Binary"
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod +x /usr/local/bin/minikube
minikube version


echo "Install Kubectl utility"
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version -o yaml


echo "Start the minikube"
minikube start 
minikube status







