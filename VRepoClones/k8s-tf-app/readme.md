# This project is to create AKS using terraform and then deploy the python app on the AKS.

## Steps

  * Create AKS cluster using terraform 
  * Build the image and push to ACR
  * Deploy on AKS


### Good To know
   ```
   $(Pipeline.Workspace)/s/ = $(Build.SourcesDirectory)
   ```