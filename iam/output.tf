output "ecs_role" {
  value = aws_iam_instance_profile.ecs_service_role.name
}