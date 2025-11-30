# Terraform AWS Projects
This repository contains five hands-on Terraform projects that deploy AWS infrastructure for different purposes. Each project progressively builds more complex cloud architectures, integrating EC2 instances, VPCs, load balancers, web templates, and CI/CD pipelines.

## Project Overview

| Project | Objective | Key Features | Outputs | Challenges / Fixes |
|---------|-----------|--------------|---------|------------------|
| Project 1: VPC with EC2 | Deploy a single EC2 instance inside a custom VPC | - VPC with public subnet<br>- EC2 instance<br>- Security group allows SSH access | Public IP | Basic Terraform setup; EC2 launched in a VPC with SSH access. |
| Project 2: Three-Tier Architecture | Deploy a simple three-tier app | - VPC with public and private subnets<br>- Web server in public subnet<br>- App/DB server in private subnet<br>- Inter-tier security | Public & Private subnet IDs | Correct routing and security group configurations between tiers |
| Project 3: Reverse Proxy | Deploy EC2 with Nginx as reverse proxy and S3 static hosting | - EC2 running Nginx as reverse proxy<br>- S3 bucket hosting static website<br>- Security groups for HTTP | EC2 Public IP, S3 Bucket Name | Initially displayed nothing; fixed Nginx to echo "Hello from Terraform EC2". S3 bucket ACL issues resolved. |
| Project 4: Load Balanced Web App | Deploy scalable web app with ALB and Tooplate template | - Multi-AZ public subnets<br>- EC2 with Eco Lume template<br>- Application Load Balancer distributing traffic<br>- Security groups configured | ALB DNS, EC2 Public IPs | ALB failed initially because multiple subnets were in the same AZ; fixed by using subnets in different AZs. Internet Gateway added. Nginx default page replaced with template via user_data. |
| Project 5: AWS Elastic Beanstalk + CodePipeline | Deploy Node.js app with CI/CD pipeline | - Elastic Beanstalk application and environment<br>- CI/CD using AWS CodePipeline connected to GitHub<br>- Build & test via AWS CodeBuild<br>- Auto-deployment on code changes<br>- Environment variables configured | EB Environment URL, CodePipeline & CodeBuild status | Initial deployment failed due to IAM role misconfig; fixed by assigning proper CodePipeline and CodeBuild role permissions. Environment variables added via Terraform. |

## Folder Structure

terraform-aws-projects/
├── project1-vpc-ec2/
│ └── main.tf, variables.tf, outputs.tf, terraform.tfvars
├── project2-three-tier/
│ └── main.tf, modules/, variables.tf, outputs.tf, terraform.tfvars
├── project3-reverse-proxy/
│ └── main.tf, modules/, variables.tf, outputs.tf, terraform.tfvars
├── project4-load-balancer/
│ └── main.tf, modules/, variables.tf, outputs.tf, terraform.tfvars
├── project5-aws-eb-codepipeline/
│ └── main.tf, modules/, variables.tf, outputs.tf, terraform.tfvars
└── README.md


## Notes
- All projects are modularized using Terraform modules for reusability.
- Security groups, subnets, and IAM roles are designed according to AWS best practices.
- `user_data` scripts automate EC2 provisioning and deployment of Tooplate templates.
- Outputs include public IPs, bucket names, ALB DNS, and EB environment URLs for easy access.

## Author
Chisom James Nnaji  
GitHub: [github.com/ChisomNnaji](https://github.com/ChisomNnaji)  
LinkedIn: [linkedin.com/in/chisom-nnaji-9a6304231](https://www.linkedin.com/in/chisom-nnaji-9a6304231)