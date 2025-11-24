variable "region" {
  description = "AWS region"
}

variable "ami" {
  description = "AMI ID for EC2"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "nginx_port" {
  description = "Port for Nginx"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
}
