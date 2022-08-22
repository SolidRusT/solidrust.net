terraform {
  backend "s3" {}
}

data "aws_caller_identity" "current" {}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}

provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}