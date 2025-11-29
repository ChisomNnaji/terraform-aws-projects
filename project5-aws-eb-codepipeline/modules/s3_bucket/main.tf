resource "aws_s3_bucket" "artifacts" {
  bucket = var.bucket_name



  tags = {
    Project = var.project_name
  }
}
