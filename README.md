# Terraform AWS Projects

This repository contains four hands-on Terraform projects that deploy AWS infrastructure for different purposes. Each project progressively builds more complex cloud architectures, integrating EC2 instances, VPCs, load balancers, and web templates.

---

## Project Overview

| Project | Objective | Key Features | Outputs | Challenges / Fixes |
|---------|-----------|--------------|---------|-------------------|
| **Project 1: VPC with EC2** | Deploy a single EC2 instance inside a custom VPC | - VPC with public subnet<br>- EC2 instance with Nginx<br>- Security group allows HTTP access | Public IP | Basic Terraform modules and variables; bootstrapping EC2 with `user_data` |
| **Project 2: Three-Tier Architecture** | Deploy a simple three-tier app | - VPC with public and private subnets<br>- Web server in public subnet<br>- App/DB server in private subnet<br>- Inter-tier security | Public & Private subnet IDs | Correct routing and security group configurations between tiers |
| **Project 3: Reverse Proxy** | Deploy EC2 with Nginx as reverse proxy and S3 static hosting | - EC2 running Nginx as reverse proxy<br>- S3 bucket hosting static website<br>- Security groups for HTTP | EC2 Public IP, S3 Bucket Name | Initially displayed default Nginx page; fixed `user_data` to deploy Tooplate template. S3 bucket ACL issues resolved. |
| **Project 4: Load Balanced Web App** | Deploy scalable web app with ALB and Tooplate template | - Multi-AZ public subnets<br>- EC2 with Eco Lume template<br>- Application Load Balancer distributing traffic<br>- Security groups configured | ALB DNS, EC2 Public IPs | ALB failed initially because multiple subnets were in the same AZ; fixed by using subnets in different AZs. Internet Gateway added. Nginx default page replaced with template via `user_data`. |

---

## Folder Structure
project-root/
│
├── project1-vpc-ec2/
│ └── main.tf, variables.tf, outputs.tf, terraform.tfvars
│
├── project2-three-tier/
│ └── main.tf, modules/, variables.tf, outputs.tf, terraform.tfvars
│
├── project3-reverse-proxy/
│ └── main.tf, modules/, variables.tf, outputs.tf, terraform.tfvars
│
├── project4-load-balancer/
│ └── main.tf, modules/, variables.tf, outputs.tf, terraform.tfvars
│
└── README.md


---

## Notes

- All projects are modularized using Terraform modules for reusability.
- Security groups and subnets are designed according to AWS best practices.
- `user_data` scripts automate EC2 provisioning and deployment of Tooplate templates.
- Outputs include public IPs, bucket names, and ALB DNS for easy access.

---

## Author

**Chisom James Nnaji**  
GitHub: [github.com/ChisomNnaji](https://github.com/ChisomNnaji)  
LinkedIn: [linkedin.com/in/chisom-nnaji-9a6304231](https://www.linkedin.com/in/chisom-nnaji-9a6304231/)
