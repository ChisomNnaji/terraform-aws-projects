provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
}


module "security_group" {
  source     = "./modules/security_group"
  vpc_id     = module.vpc.vpc_id
  nginx_port = var.nginx_port
}

module "ec2" {
  source            = "./modules/ec2"
  ami               = var.ami
  instance_type     = var.instance_type
  public_subnet_id  = module.vpc.public_subnets[0]
  security_group_id = module.security_group.sg_id
}

module "alb" {
  source             = "./modules/alb"
  vpc_id             = module.vpc.vpc_id
  public_subnets_ids = module.vpc.public_subnets
  target_sg_id       = module.security_group.sg_id
  target_instance    = module.ec2.instance_id
}
