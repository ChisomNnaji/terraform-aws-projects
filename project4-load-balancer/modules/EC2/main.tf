resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.security_group_id]

  user_data = <<-EOF
              #!/bin/bash
              dnf update -y
              dnf install -y nginx unzip
              systemctl enable nginx
              systemctl start nginx
              cd /usr/share/nginx/html
              curl -O https://www.tooplate.com/zip-templates/2126_eco_lume.zip
              unzip 2126_eco_lume.zip
              rm -f 2126_eco_lume.zip
              EOF

  tags = {
    Name = "eco-lume-server"
  }
}
