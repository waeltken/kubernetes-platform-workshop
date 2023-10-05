## Create a first Azure Kubernetes Service (AKS) cluster

In this segment we will create the IaC template for an AKS cluster. We will then
use Terraform to deploy the cluster to Azure. We will check if we can reach the
cluster and then automate the update and deployment process using GitHub
Actions.

### Create the IaC template

We start by creating a new folder for our IaC template. This time we will want
to create a git repository for our files. This will allow us to use GitHub
Actions to automate the deployment process as well as track all changes to our
infrastructure.

Let's begin.

