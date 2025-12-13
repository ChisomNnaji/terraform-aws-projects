project_name          = "my-eb-project"
github_owner          = "ChisomNnaji"
github_repo           = "aws-ci-cd-dashboard"
github_branch         = "main"
s3_bucket_name        = "project5-eb-codepipeline-codebuild-bucket-chisom01"
eb_app_name           = "project5-eb-app-chisom"
eb_env_name           = "project5-eb-env-chisom"
codepipeline_role_arn = "arn:aws:iam::094822715110:role/CodePipelineFullAccess"
solution_stack        = "64bit Amazon Linux 2023 v6.7.0 running Node.js 20"
aws_region            = "us-east-1"
environment           = "dev"

min_size             = 1
max_size             = 2
ec2_instance_profile = "project5-eb-ec2-profile"
service_role_arn     = "arn:aws:iam::094822715110:role/project5-eb-service-role"