variable "vpc_id" {
  
}

variable "vpc_zone_identifier" {
  
}

variable "key_name" {
  default = "msr-singapore"
}


variable "cluster_name" {
  type        = string
  description = "The name of AWS ECS cluster"
  default     = "terraform_workshop_cluster"
}

variable "target_group_arns" {
  
}

variable "iam_instance_profile" {
  
}