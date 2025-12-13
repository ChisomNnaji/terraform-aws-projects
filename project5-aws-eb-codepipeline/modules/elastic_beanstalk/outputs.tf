output "eb_app_name" {
  value = aws_elastic_beanstalk_application.app.name
}

output "eb_env_name" {
  value = aws_elastic_beanstalk_environment.env.name
}

output "elasticbeanstalk_url" {
  value = "http://${aws_elastic_beanstalk_environment.env.endpoint_url}"
}