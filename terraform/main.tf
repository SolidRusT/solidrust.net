terraform {
  backend "s3" {}
}

data "aws_caller_identity" "current" {}

locals{
  project = "srt-cloud"
  prefix  = "${local.project}-access"
  aws_account = data.aws_caller_identity.current.account_id
  depends_on = [module.vpc_us_east_1]
  
  vpcs = {
    us-east-1 = {
      cidr = "${var.vpc_cidr_us_east_1}"
      region = "us-east-1"
      name = "${local.prefix}-us-east-1"
      azs = ["us-east-1a", "us-east-1b"]
      public_subnets = "${var.public_subnets_us_east_1}"
      private_subnets = "${var.private_subnets_us_east_1}"
    }

    us-east-2 = {
      cidr = "${var.vpc_cidr_us_east_2}"
      region = "us-east-2"
      name = "${local.prefix}-us-east-2"
      azs = ["us-east-2a", "us-east-2b"]
      public_subnets = "${var.public_subnets_us_east_2}"
      private_subnets = "${var.private_subnets_us_east_2}"
    }

    us-west-2 = {
      cidr = "${var.vpc_cidr_us_west_2}"
      region = "us-west-2"
      name = "${local.prefix}-us-west-2"
      azs = ["us-west-2a", "us-west-2b"]
      public_subnets = "${var.public_subnets_us_west_2}"
      private_subnets = "${var.private_subnets_us_west_2}"
    }
  }

  common_tags = {
    Project     = local.project
    Environment = var.env
    CreatedBy   = "Terraform"
    Terraform   = true
    Owner       = var.owner_tag
  }
}
