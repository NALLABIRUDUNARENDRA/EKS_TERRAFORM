# VPC Name
variable "vpc_name" {
  default = "MyVPC"
}

# VPC CIDR BLOCK
variable "vpc_cidr_block" {
  default = "10.60.0.0/16"
}

# VPC Availability Zones
variable "vpc_azs" {
  type = list(string)
  default = ["us-east-1a","us-east-1b"]
}

# VPC Public subnets
variable "vpc_public_subnets" {
  type = list(string)
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

# VPC Public subnets
variable "vpc_private_subnets" {
  type = list(string)
  default = ["10.0.10.0/24","10.0.20.0/24"]
}
