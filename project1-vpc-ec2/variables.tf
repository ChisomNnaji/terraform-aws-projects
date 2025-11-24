# AWS Region
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Subnet
variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# EC2 #
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0fa3fe0fa7920f68e"
}
