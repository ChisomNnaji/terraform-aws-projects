resource "aws_security_group" "nginx_sg" {
  name   = "nginx-sg"
  vpc_id = var.vpc_id

  ingress {
    from_port   = var.nginx_port
    to_port     = var.nginx_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "nginx" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [aws_security_group.nginx_sg.id]

  tags = {
    Name = "nginx-server"
  }

user_data = <<-EOF
            #!/bin/bash
            # Update system packages
            dnf update -y

            # Install Nginx and unzip tool
            dnf install -y nginx unzip

            # Enable and start Nginx
            systemctl enable nginx
            systemctl start nginx

            # Navigate to web root
            cd /usr/share/nginx/html

            # Download the Nexus Brew template
            curl -LO https://www.tooplate.com/zip-templates/2146_nexus_brew.zip

            # Unzip the template to this directory
            unzip 2146_nexus_brew.zip

            # Move all files out of the unzipped folder to web root
            mv 2146_nexus_brew/* ./

            # Clean up
            rm -rf 2146_nexus_brew 2146_nexus_brew.zip

            # Optional: remove default index if exists
            rm -f index.html

            # Reload Nginx to reflect changes
            systemctl reload nginx

            # Configure Nginx as a reverse proxy (if you have a backend)
            cat > /etc/nginx/conf.d/reverse-proxy.conf <<EOL
            server {
                listen 80;
                location / {
                    proxy_pass http://BACKEND_PRIVATE_IP;
                    proxy_set_header Host \$host;
                    proxy_set_header X-Real-IP \$remote_addr;
                    proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
                }
            }
            EOL

            systemctl reload nginx
            EOF

}




