# Create VPC Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"

 #  VPC Basic Details
 name = var.vpc_name
 cidr = var.vpc_cidr_block

 azs             = var.vpc_azs
 public_subnets  = var.vpc_public_subnets
 private_subnets = var.vpc_private_subnets

 # NAT Gateways - Outbound Communication
 enable_nat_gateway = true
 single_nat_gateway = true
 one_nat_gateway_per_az = false

 enable_dns_support = true
 enable_dns_hostnames = true

 tags = {
  Environment = "staging"
 }
}

