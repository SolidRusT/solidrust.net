variable "env" {
  default =  "prod"
}

variable "region" {
  default = "us-east-1"
}

variable "owner_tag" {
  default = "Unknown / Default"
}

variable "project" {
  default = "srt-cloud"  
}

variable "vpc_cidr_us_east_1" {
}

variable "vpc_cidr_us_east_2" {
}

variable "vpc_cidr_us_west_2" {
}

variable "private_subnets_us_east_1" {
  type = list
}

variable "private_subnets_us_east_2" {
  type = list
}

variable "private_subnets_us_west_2" {
  type = list
}

variable "public_subnets_us_east_1" {
  type = list
}

variable "public_subnets_us_east_2" {
  type = list
}

variable "public_subnets_us_west_2" {
  type = list
}
