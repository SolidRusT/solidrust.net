# us-east-1 - public
resource "aws_network_interface" "nginx_1_us_east_1_public" {
  subnet_id   = module.vpc_us_east_1.public_subnets[0]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-1
}

resource "aws_network_interface" "nginx_2_us_east_1_public" {
  subnet_id   = module.vpc_us_east_1.public_subnets[1]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-1
}

resource "aws_network_interface" "app_1_us_east_1_public" {
  subnet_id   = module.vpc_us_east_1.public_subnets[0]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-1
}

resource "aws_network_interface" "app_2_us_east_1_public" {
  subnet_id   = module.vpc_us_east_1.public_subnets[1]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-1
}

# us-east-1 - private
resource "aws_network_interface" "nginx_1_us_east_1_private" {
  subnet_id   = module.vpc_us_east_1.private_subnets[0]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-1
}

resource "aws_network_interface" "nginx_2_us_east_1_private" {
  subnet_id   = module.vpc_us_east_1.private_subnets[1]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-1
}

resource "aws_network_interface" "app_1_us_east_1_private" {
  subnet_id   = module.vpc_us_east_1.private_subnets[0]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-1
}

resource "aws_network_interface" "app_2_us_east_1_private" {
  subnet_id   = module.vpc_us_east_1.private_subnets[1]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-1
}

# us-east-2 - public
resource "aws_network_interface" "nginx_1_us_east_2_public" {
  subnet_id   = module.vpc_us_east_2.public_subnets[0]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-2
}

resource "aws_network_interface" "nginx_2_us_east_2_public" {
  subnet_id   = module.vpc_us_east_2.public_subnets[1]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-2
}

resource "aws_network_interface" "app_1_us_east_2_public" {
  subnet_id   = module.vpc_us_east_2.public_subnets[0]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-2
}

resource "aws_network_interface" "app_2_us_east_2_public" {
  subnet_id   = module.vpc_us_east_2.public_subnets[1]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-2
}

# us-east-2 - private
resource "aws_network_interface" "nginx_1_us_east_2_private" {
  subnet_id   = module.vpc_us_east_2.private_subnets[0]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-2
}

resource "aws_network_interface" "nginx_2_us_east_2_private" {
  subnet_id   = module.vpc_us_east_2.private_subnets[1]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-2
}

resource "aws_network_interface" "app_1_us_east_2_private" {
  subnet_id   = module.vpc_us_east_2.private_subnets[0]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-2
}

resource "aws_network_interface" "app_2_us_east_2_private" {
  subnet_id   = module.vpc_us_east_2.private_subnets[1]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-east-2
}

# us-west-2 - public
resource "aws_network_interface" "nginx_1_us_west_2_public" {
  subnet_id   = module.vpc_us_west_2.public_subnets[0]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-west-2
}

resource "aws_network_interface" "nginx_2_us_west_2_public" {
  subnet_id   = module.vpc_us_west_2.public_subnets[0]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-west-2
}

resource "aws_network_interface" "app_1_us_west_2_public" {
  subnet_id   = module.vpc_us_west_2.public_subnets[1]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-west-2
}

resource "aws_network_interface" "app_2_us_west_2_public" {
  subnet_id   = module.vpc_us_west_2.public_subnets[1]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-west-2
}

# us-west-2 - private
resource "aws_network_interface" "nginx_1_us_west_2_private" {
  subnet_id   = module.vpc_us_west_2.private_subnets[0]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-west-2
}

resource "aws_network_interface" "nginx_2_us_west_2_private" {
  subnet_id   = module.vpc_us_west_2.private_subnets[0]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-west-2
}

resource "aws_network_interface" "app_1_us_west_2_private" {
  subnet_id   = module.vpc_us_west_2.private_subnets[1]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-west-2
}

resource "aws_network_interface" "app_2_us_west_2_private" {
  subnet_id   = module.vpc_us_west_2.private_subnets[1]
  security_groups = [aws_security_group.ssh.id]
  provider = aws.us-west-2
}

