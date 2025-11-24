variable "username" {
  type = string
}

variable "password" {
  type      = string
  sensitive = true
}

variable "private_subnet_ids" {
  type = list(string)
}
