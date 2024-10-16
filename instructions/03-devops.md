## General DevOps Usage
- `What is the helm command for deploying a sample wordpress application in a Azure k8s cluster ?`

- `Create k8s manifest files for deployment, service and ingress for the wordpress application.`
  - _Note: Try modifying the existing files if you already have some yamls_
  
- Navigate to `assets/sampleapp`
  - `@workspace Create a docker file to containerize this sampleapp application inside assets folder`
  - Add reference to the main.py file
  - `How do I build and run this docker image`
  - `Automate the same with docker compose`

- Terraform settings
  - generate parts of code -> use main.tf file
  - `Add a subnet rule to open ssh port`
  - `create a new aks cluster`
  - Ask copilot how to query and manipulate the terraform state.

    ```bash
    terraform state
    terraform plan
    ```
  - What are some different ways of securing variables in the terraform files. Ex: terraform.tfvars 

  - Leverage implicit and explicit dependencies in Terraform.

    _**Tip**:  Copilot can suggest relevant resource names (depends_on clause) based on context, ensuring proper ordering of resource creation._

    Ex: If you need to ensure that an S3 bucket is created before launching an EC2 instance, Copilot can help automate these dependencies.

  - `What are some best practices when working with terraform ?`

- `Create a github workflow file for the folder terraform-azure-project in this workspace, that on 'push' to main branch, runs terraform apply`

  (or)

  `Help write the docker.yml workflow for building and deploying above sampleapp Docker application`