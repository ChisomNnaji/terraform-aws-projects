output "eb_app_name" {
  value = aws_elastic_beanstalk_application.app.name
}

output "eb_env_name" {
  value = aws_elastic_beanstalk_environment.env.name
}
