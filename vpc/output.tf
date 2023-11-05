output "vpc_id" {
  value = data.aws_vpc.main.id
}

/* output "alb_dns" {
  value = aws_lb.test-lb.dns_name
} */

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "igw_id" {
  value = module.vpc.igw_id
}