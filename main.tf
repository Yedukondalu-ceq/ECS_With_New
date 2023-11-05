provider "aws" {
  region  = "ap-southeast-1"
 # shared_credentials_file = "$HOME/.aws/credentials" # default
 # profile = "default" # you may change to desired profile
 # version = "~> 5.0"
}





module "alb" {
  source = "./alb"
  vpc_id = module.vpc.vpc_id
  subnets = module.vpc.public_subnets
}
 
module "asg" {
  source = "./asg"
  vpc_id = module.vpc.vpc_id
  vpc_zone_identifier = module.vpc.public_subnets
  #target_group_arns     = [aws_lb_target_group.lb_target_group.arn]
  target_group_arns     = module.alb.target_group_arns
  iam_instance_profile        = module.iam.ecs_role
}

module "vpc" {
  source = "./vpc"
}

module "ecs" {
  source = "./ecs"
  target_group_arn = module.alb.target_group_arns
  auto_scaling_group_arn  = module.asg.auto_scaling_group_arn
}

module "iam" {
  source = "./iam"
  
}

