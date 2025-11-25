region        = "us-east-1"
ami           = "ami-0fa3fe0fa7920f68e"
instance_type = "t3.micro"
nginx_port    = 80
vpc_cidr      = "10.0.0.0/16"
public_subnet_cidr = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]