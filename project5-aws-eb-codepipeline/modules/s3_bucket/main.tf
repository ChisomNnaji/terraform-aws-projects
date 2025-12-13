resource "aws_s3_bucket" "artifacts" {
  bucket = var.bucket_name
  force_destroy = true



  tags = {
    Project = var.project_name
  }
}
