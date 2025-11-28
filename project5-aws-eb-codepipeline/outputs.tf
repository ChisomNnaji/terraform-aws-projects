output "s3_bucket_name" {
  value = module.s3_bucket.bucket_name
}

output "eb_app_name" {
  value = module.elastic_beanstalk.eb_app_name
}

output "eb_env_name" {
  value = module.elastic_beanstalk.eb_env_name
}

output "codepipeline_name" {
  value = module.codepipeline.pipeline_name
}
