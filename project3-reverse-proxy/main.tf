module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.s3_bucket_name
}

module "ec2" {
  source           = "./modules/ec2"
  ami              = var.ec2_ami
  instance_type    = var.ec2_instance_type
  public_subnet_id = module.vpc.public_subnet_ids[0]
  vpc_id           = module.vpc.vpc_id
  nginx_port       = var.nginx_port
  s3_bucket_name   = var.s3_bucket_name
}
