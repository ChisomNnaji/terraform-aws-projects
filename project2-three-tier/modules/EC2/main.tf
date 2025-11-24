resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  
  tags = {
    Name        = "project2-ec2-web"
    Environment = "Dev"
    Owner       = "Chisom"
  }
}

output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}
