module "vpc_us_east_1" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.10.0"

  name = local.vpcs.us-east-1.name
  cidr = local.vpcs.us-east-1.cidr

  enable_dns_hostnames = true
  enable_dns_support   = true

  azs             = local.vpcs.us-east-1.azs
  public_subnets  = local.vpcs.us-east-1.public_subnets
  private_subnets = local.vpcs.us-east-1.private_subnets

  tags = local.common_tags
}

module "vpc_us_east_2" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.10.0"

  name = local.vpcs.us-east-2.name
  cidr = local.vpcs.us-east-2.cidr

  enable_dns_hostnames = true
  enable_dns_support   = true

  azs             = local.vpcs.us-east-2.azs
  public_subnets  = local.vpcs.us-east-2.public_subnets
  private_subnets = local.vpcs.us-east-2.private_subnets

  tags = local.common_tags

  providers = {
    aws = aws.us-east-2
  }
}

module "vpc_us_west_2" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.10.0"

  name = local.vpcs.us-west-2.name
  cidr = local.vpcs.us-west-2.cidr

  enable_dns_hostnames = true
  enable_dns_support   = true

  azs             = local.vpcs.us-west-2.azs
  public_subnets  = local.vpcs.us-west-2.public_subnets
  private_subnets = local.vpcs.us-west-2.private_subnets

  tags = local.common_tags

  providers = {
    aws = aws.us-west-2
  }
}
