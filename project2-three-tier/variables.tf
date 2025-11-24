variable "region" {
  type        = string
}

variable "vpc_cidr" {
  type = string
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}
