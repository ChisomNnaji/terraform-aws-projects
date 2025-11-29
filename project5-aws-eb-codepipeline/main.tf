provider "aws" {
  region = var.aws_region
}

module "iam_roles" {
  source       = "./modules/iam_roles"
  project_name = var.project_name
}

module "s3_bucket" {
  source       = "./modules/s3_bucket"
  bucket_name  = var.s3_bucket_name
  project_name = var.project_name
}


module "elastic_beanstalk" {
  source               = "./modules/elastic_beanstalk"
  project_name         = var.project_name
  environment          = var.environment
  eb_app_name          = var.eb_app_name
  eb_env_name          = var.eb_env_name
  solution_stack       = var.solution_stack
  min_size             = var.min_size
  max_size             = var.max_size
  ec2_instance_profile = module.iam_roles.ec2_instance_profile_name
  service_role_arn     = module.iam_roles.service_role_arn
}


module "codepipeline" {
  source             = "./modules/codepipeline"
  project_name       = var.project_name
  github_owner       = var.github_owner
  github_repo        = var.github_repo
  github_branch      = var.github_branch
  github_oauth_token = var.github_oauth_token
  codepipeline_role  = module.iam_roles.codepipeline_role_arn
  s3_bucket          = module.s3_bucket.bucket_name
  eb_app_name        = module.elastic_beanstalk.eb_app_name
  eb_env_name        = module.elastic_beanstalk.eb_env_name
}

module "codebuild" {
  source             = "./modules/codebuild"
  project_name       = var.project_name
  buildspec          = "buildspec.yml"
  codebuild_role_arn = module.iam_roles.codebuild_role_arn
}
