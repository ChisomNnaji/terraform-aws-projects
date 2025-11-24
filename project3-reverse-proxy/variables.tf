variable "region" {
  type        = string
  description = "AWS region to deploy resources"
}

variable "vpc_cidr" {
  type        = string
  description = "Main VPC CIDR block"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public subnet CIDR blocks"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private subnet CIDR blocks"
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
}

variable "ec2_instance_type" {
  type = string
}

variable "ec2_ami" {
  type = string
}

variable "nginx_port" {
  type    = number
  default = 80
}

variable "s3_bucket_name" {
  type = string
}
