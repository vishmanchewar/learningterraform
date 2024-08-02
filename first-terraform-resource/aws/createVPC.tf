# AWS Provider to work with ap-south-1 region.
provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc-name1"
  cidr = "10.11.0.0/16"

  azs             = ["ap-south-1a", "ap-south-1b"]
  private_subnets = ["10.11.5.0/24", "10.11.6.0/24"]
  public_subnets  = ["10.11.105.0/24", "10.11.106.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
