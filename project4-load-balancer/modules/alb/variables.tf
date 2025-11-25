variable "vpc_id" {}

variable "public_subnets_ids" {
  type = list(string)
}


variable "target_sg_id" {}
variable "target_instance" {}
