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
  type = string
}

variable "public_subnet_cidr" {
  type = list(string)
}