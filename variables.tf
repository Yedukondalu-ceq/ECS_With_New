variable "key_name" {
  type        = string
  description = "The name for ssh key, used for aws_launch_configuration"
  default     = "ecs_yanam"
}

variable "cluster_name" {
  type        = string
  description = "The name of AWS ECS cluster"
  default     = "terraform_workshop_cluster"
}