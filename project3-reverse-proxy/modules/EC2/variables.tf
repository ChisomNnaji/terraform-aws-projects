variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "public_subnet_id" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "nginx_port" {
  type = number
}

variable "s3_bucket_name" {
  type = string
}
