output "codepipeline_role_arn" {
  value = aws_iam_role.codepipeline.arn
}

output "service_role_arn" {
  value = aws_iam_role.eb_service.arn
}

output "ec2_instance_profile_name" {
  value = aws_iam_instance_profile.eb_ec2_profile.name
}