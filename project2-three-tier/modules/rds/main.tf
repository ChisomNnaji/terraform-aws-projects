resource "aws_db_subnet_group" "db" {
  name       = "db-subnet-group"
  subnet_ids = var.private_subnet_ids
}

resource "aws_db_instance" "db" {
  identifier             = "mydb-instance"
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  username               = var.username
  password               = var.password
  db_subnet_group_name   = aws_db_subnet_group.db.name
  skip_final_snapshot    = true
}


