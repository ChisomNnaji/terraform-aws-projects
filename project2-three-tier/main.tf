module "vpc" {
  source = "./modules/vpc"

  vpc_cidr              = var.vpc_cidr
  private_subnet_cidrs  = var.private_subnet_cidrs
  public_subnet_cidrs   = var.public_subnet_cidrs
  azs                   = var.azs
}

module "ec2" {
  source = "./modules/ec2"

  ami               = var.ami_id
  instance_type     = var.instance_type
  public_subnet_id  = module.vpc.public_subnet_ids[0]
}

module "rds" {
  source = "./modules/rds"

  username           = var.db_username
  password           = var.db_password
  private_subnet_ids = module.vpc.private_subnet_ids
}
