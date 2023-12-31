terraform {
    required_version = "~>1.5" # Which Means Any Version Equal & Above

required_providers {
  aws = {
    source = "HashiCorp/aws"
    version = "~>5.0"
  }
}
}

provider "aws" {
  region = var.aws_region
}

/*
Note-1: AWS Credentials Porfile (profile = "default") configured on $HOME/.aws/credentials
*/