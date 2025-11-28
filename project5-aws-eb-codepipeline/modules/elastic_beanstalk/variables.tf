variable "eb_app_name" {
  type = string
}

variable "eb_env_name" {
  type = string
}

variable "solution_stack" {
  type = string
}



variable "min_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "ec2_instance_profile" {
  type = string
}

variable "service_role_arn" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}