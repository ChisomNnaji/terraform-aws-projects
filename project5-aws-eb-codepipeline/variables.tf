variable "project_name" {}
variable "github_owner" {}
variable "github_repo" {}
variable "github_branch" {}
variable "s3_bucket_name" {}
variable "eb_app_name" {}
variable "eb_env_name" {}
variable "codepipeline_role_arn" {}
variable "github_oauth_token" {
  description = "GitHub OAuth token for CodePipeline to access repo"
  type        = string
  sensitive   = true
}
variable "aws_region" {}
variable "environment" {}
variable "solution_stack" {}

variable "min_size" {}
variable "max_size" {}
variable "ec2_instance_profile" {}
variable "service_role_arn" {}

