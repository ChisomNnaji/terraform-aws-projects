# Terraform AWS Projects

A collection of Terraform AWS infrastructure projects including VPC, EC2, RDS, S3, and more.  
Each project is organized as a separate folder inside this repository.

## Project Structure

terraform-aws-projects/
│── project1-vpc-ec2/
│── project2-three-tier/
│── project3-reverse-proxy/ # To be added later


---

## Project 1: VPC + EC2

- **Description:** Deploy a simple VPC with public and private subnets and an EC2 instance.
- **Modules:** VPC, EC2
- **Files:**
  - main.tf
  - variables.tf
  - outputs.tf
  - provider.tf
  - terraform.tfvars
- **How to deploy:**
```bash
cd project1-vpc-ec2
terraform init

Project 2: Three-Tier Architecture

Description: Deploy a three-tier architecture with VPC, public/private subnets, EC2 web server, and RDS database.

Modules: VPC, EC2, RDS

Files:

main.tf

variables.tf

outputs.tf

provider.tf

terraform.tfvars

How to deploy:

cd project2-three-tier
terraform init
terraform plan
terraform apply

Project 3: Reverse Proxy + S3 + EC2 (To be added later)

Description: Deploy a reverse proxy setup with Nginx on EC2, S3 static website, and CloudFront CDN.

Modules: VPC, EC2 (Nginx), S3

Files: main.tf, variables.tf, outputs.tf, provider.tf, terraform.tfvars

How to deploy: Will be added later.

Notes


All Terraform state files are ignored in .gitignore (.terraform/, *.tfstate, etc.).


EC2, RDS, and S3 resources are tagged dynamically via variables.


Project 3 folder will be pushed once it’s complete.

terraform plan
terraform apply
