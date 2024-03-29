module "vpc" {
  source         = "terraform-aws-modules/vpc/aws"
  #version        = "5.1.2"
  name           = "test_ecs_provisioning"
  cidr           = "10.0.0.0/16"
  azs            = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  tags = {
    "env"       = "dev"
    "createdBy" = "binpipe"
  }

}

data "aws_vpc" "main" {
  id = module.vpc.vpc_id
}