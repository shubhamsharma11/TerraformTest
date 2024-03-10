# This project is to create AKS using terraform and then deploy the python app on the AKS.

## Steps

  * Create AKS cluster using terraform 
  * Build the image and push to ACR
  * Deploy on AKS

### Create AKS cluster using terraform
  * Change the below values in "terraform.tfvars"
    * k8s_name
    * vnet_name
    * k8s_rg

### Good To know
   ```
   $(Pipeline.Workspace)/s/ = $(Build.SourcesDirectory)
   ```