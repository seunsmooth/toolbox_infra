module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "main-vpc"
  cidr   = "10.1.0.0/16"

  azs = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]

  private_subnets      = var.private_subnets
  public_subnets       = var.public_subnets
  enable_ipv6          = false
  enable_dns_hostnames = true
  enable_dns_support   = true
  #enable_nat_gateway   = true
  #enable_vpn_gateway   = false

  tags = {
    Name        = "terraform_vpc"
    Terraform   = "true"
    Environment = "prod"
  }

}