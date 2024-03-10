#!/bin/bash

# This script will delete series of image ,base on the tag number  which is old and not requried.

ACR_NAME="kuberepoctsvishwa2024"
USERNAME="kuberepoctsvishwa2024"
PASSWORD="2FkcejBX/9hW9WE4mLINODPERX3a/g4xXTCV6dI4PF+ACRCzS37I"

for i in {28..38}; do
    TAG="$i"
    IMAGE_NAME="$ACR_NAME:$TAG"
    echo "Deleting image: $IMAGE_NAME"
    az acr repository delete --name $ACR_NAME --image $IMAGE_NAME --username $USERNAME --password $PASSWORD --yes
done
