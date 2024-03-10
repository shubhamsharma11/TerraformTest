# Login to the Azure
az login

# Set the subscription
az account set --subscription 3b1bfc9b-7c37-48b7-b852-c4208989b7d1

# Create service principle
az ad sp create-for-rbac --name spDemo01 --role Contributor --scopes /subscriptions/3b1bfc9b-7c37-48b7-b852-c4208989b7d1

# Initalize and apply terraform
terraform init
terraform plan
terraform apply


az aks get-credentials --resource-group rgDemo01 --name aksDemo01
kubectl get nodes
docker build -t shub-image .
docker ps
docker image ls
docker run -p 8080:80 shub-image
az acr create --resource-group rgDemo01 --name acrshubdemo01 --sku Basic
docker tag shub-image acrshubdemo01.azurecr.io/shub-image:v1
az acr login --name acrshubdemo01
docker push acrshubdemo01.azurecr.io/shub-image:v1
az acr repository list --name acrshubdemo01 --output table
kubectl apply -f pod.yaml
kubectl apply -f pod.yml
kubectl exec -it web-pod -- /bin/bash
kubectl logs web-pod -c web-container
kubectl get pods
kubectl rollout undo deployment nginx-deployment -n ns01 --to-revision=1
kubectl rollout history deployment nginx-deployment -n ns01
