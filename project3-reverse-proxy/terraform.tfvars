region = "us-east-1"

vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]

azs = ["us-east-1a", "us-east-1b"]

ec2_instance_type = "t3.micro"
ec2_ami           = "ami-0fa3fe0fa7920f68e"

s3_bucket_name = "demo-projects-reverse-proxy-bucket"
