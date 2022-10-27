# us-east-1 - public
resource "aws_network_interface" "web_1_us_east_1_public" {
  provider = "aws.us-east-1"
  subnet_id   = module.vpc_us_east_1.public_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "web_2_us_east_1_public" {
  provider = "aws.us-east-1"
  subnet_id   = module.vpc_us_east_1.public_subnets[1]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "app_1_us_east_1_public" {
  provider = "aws.us-east-1"
  subnet_id   = module.vpc_us_east_1.public_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "app_2_us_east_1_public" {
  provider = "aws.us-east-1"
  subnet_id   = module.vpc_us_east_1.public_subnets[1]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

# us-east-1 - private
resource "aws_network_interface" "web_1_us_east_1_private" {
  provider = "aws.us-east-1"
  subnet_id   = module.vpc_us_east_1.private_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "web_2_us_east_1_private" {
  provider = "aws.us-east-1"
  subnet_id   = module.vpc_us_east_1.private_subnets[1]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "app_1_us_east_1_private" {
  provider = "aws.us-east-1"
  subnet_id   = module.vpc_us_east_1.private_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "app_2_us_east_1_private" {
  provider = "aws.us-east-1"
  subnet_id   = module.vpc_us_east_1.private_subnets[1]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

# us-east-2 - public
resource "aws_network_interface" "web_1_us_east_2_public" {
  provider = "aws.us-east-2"
  subnet_id   = module.vpc_us_east_2.public_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "web_2_us_east_2_public" {
  provider = "aws.us-east-2"
  subnet_id   = module.vpc_us_east_2.public_subnets[1]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "app_1_us_east_2_public" {
  provider = "aws.us-east-2"
  subnet_id   = module.vpc_us_east_2.public_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "app_2_us_east_2_public" {
  provider = "aws.us-east-2"
  subnet_id   = module.vpc_us_east_2.public_subnets[1]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

# us-east-2 - private
resource "aws_network_interface" "web_1_us_east_2_private" {
  provider = "aws.us-east-2"
  subnet_id   = module.vpc_us_east_2.private_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "web_2_us_east_2_private" {
  provider = "aws.us-east-2"
  subnet_id   = module.vpc_us_east_2.private_subnets[1]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "app_1_us_east_2_private" {
  provider = "aws.us-east-2"
  subnet_id   = module.vpc_us_east_2.private_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "app_2_us_east_2_private" {
  provider = aws.us-east-2
  subnet_id   = module.vpc_us_east_2.private_subnets[1]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

# us-west-2 - public
resource "aws_network_interface" "web_1_us_west_2_public" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.public_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "web_2_us_west_2_public" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.public_subnets[1]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "app_1_us_west_2_public" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.public_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "app_2_us_west_2_public" {
  subnet_id   = module.vpc_us_west_2.public_subnets[1]
  provider = aws.us-west-2
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "proxy_1_us_west_2_public" {
  subnet_id   = module.vpc_us_west_2.public_subnets[0]
  provider = aws.us-west-2
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

# us-west-2 - private
resource "aws_network_interface" "web_1_us_west_2_private" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.private_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "web_2_us_west_2_private" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.private_subnets[1]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "app_1_us_west_2_private" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.private_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "app_2_us_west_2_private" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.private_subnets[1]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}

resource "aws_network_interface" "proxy_1_us_west_2_private" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.private_subnets[0]
  #security_groups = [aws_security_group.ssh.id]
  #depends_on = [
  #  aws_security_group.ssh
  #]
}
