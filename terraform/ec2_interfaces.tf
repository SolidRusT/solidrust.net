# us-east-1 - public
resource "aws_network_interface" "web_1_us_east_1_public" {
  provider = aws.us-east-1
  subnet_id   = module.vpc_us_east_1.public_subnets[0]
  security_groups = [aws_security_group.ssh_us_east_1.id]
  depends_on = [
    aws_security_group.ssh_us_east_1
  ]
}

resource "aws_network_interface" "web_2_us_east_1_public" {
  provider = aws.us-east-1
  subnet_id   = module.vpc_us_east_1.public_subnets[1]
  security_groups = [aws_security_group.ssh_us_east_1.id]
  depends_on = [
    aws_security_group.ssh_us_east_1
  ]
}

resource "aws_network_interface" "app_1_us_east_1_public" {
  provider = aws.us-east-1
  subnet_id   = module.vpc_us_east_1.public_subnets[0]
  security_groups = [aws_security_group.ssh_us_east_1.id]
  depends_on = [
    aws_security_group.ssh_us_east_1
  ]
}

resource "aws_network_interface" "app_2_us_east_1_public" {
  provider = aws.us-east-1
  subnet_id   = module.vpc_us_east_1.public_subnets[1]
  security_groups = [aws_security_group.ssh_us_east_1.id]
  depends_on = [
    aws_security_group.ssh_us_east_1
  ]
}

# us-east-1 - private
resource "aws_network_interface" "web_1_us_east_1_private" {
  provider = aws.us-east-1
  subnet_id   = module.vpc_us_east_1.private_subnets[0]
  security_groups = [aws_security_group.ssh_us_east_1.id]
  depends_on = [
    aws_security_group.ssh_us_east_1
  ]
}

resource "aws_network_interface" "web_2_us_east_1_private" {
  provider = aws.us-east-1
  subnet_id   = module.vpc_us_east_1.private_subnets[1]
  security_groups = [aws_security_group.ssh_us_east_1.id]
  depends_on = [
    aws_security_group.ssh_us_east_1
  ]
}

resource "aws_network_interface" "app_1_us_east_1_private" {
  provider = aws.us-east-1
  subnet_id   = module.vpc_us_east_1.private_subnets[0]
  security_groups = [aws_security_group.ssh_us_east_1.id]
  depends_on = [
    aws_security_group.ssh_us_east_1
  ]
}

resource "aws_network_interface" "app_2_us_east_1_private" {
  provider = aws.us-east-1
  subnet_id   = module.vpc_us_east_1.private_subnets[1]
  security_groups = [aws_security_group.ssh_us_east_1.id]
  depends_on = [
    aws_security_group.ssh_us_east_1
  ]
}

# us-east-2 - public
resource "aws_network_interface" "web_1_us_east_2_public" {
  provider = aws.us-east-2
  subnet_id   = module.vpc_us_east_2.public_subnets[0]
  security_groups = [aws_security_group.ssh_us_east_2.id]
  depends_on = [
    aws_security_group.ssh_us_east_2
  ]
}

resource "aws_network_interface" "web_2_us_east_2_public" {
  provider = aws.us-east-2
  subnet_id   = module.vpc_us_east_2.public_subnets[1]
  security_groups = [aws_security_group.ssh_us_east_2.id]
  depends_on = [
    aws_security_group.ssh_us_east_2
  ]
}

resource "aws_network_interface" "app_1_us_east_2_public" {
  provider = aws.us-east-2
  subnet_id   = module.vpc_us_east_2.public_subnets[0]
  security_groups = [aws_security_group.ssh_us_east_2.id]
  depends_on = [
    aws_security_group.ssh_us_east_2
  ]
}

resource "aws_network_interface" "app_2_us_east_2_public" {
  provider = aws.us-east-2
  subnet_id   = module.vpc_us_east_2.public_subnets[1]
  security_groups = [aws_security_group.ssh_us_east_2.id]
  depends_on = [
    aws_security_group.ssh_us_east_2
  ]
}

# us-east-2 - private
resource "aws_network_interface" "web_1_us_east_2_private" {
  provider = aws.us-east-2
  subnet_id   = module.vpc_us_east_2.private_subnets[0]
  security_groups = [aws_security_group.ssh_us_east_2.id]
  depends_on = [
    aws_security_group.ssh_us_east_2
  ]
}

resource "aws_network_interface" "web_2_us_east_2_private" {
  provider = aws.us-east-2
  subnet_id   = module.vpc_us_east_2.private_subnets[1]
  security_groups = [aws_security_group.ssh_us_east_2.id]
  depends_on = [
    aws_security_group.ssh_us_east_2
  ]
}

resource "aws_network_interface" "app_1_us_east_2_private" {
  provider = aws.us-east-2
  subnet_id   = module.vpc_us_east_2.private_subnets[0]
  security_groups = [aws_security_group.ssh_us_east_2.id]
  depends_on = [
    aws_security_group.ssh_us_east_2
  ]
}

resource "aws_network_interface" "app_2_us_east_2_private" {
  provider = aws.us-east-2
  subnet_id   = module.vpc_us_east_2.private_subnets[1]
  security_groups = [aws_security_group.ssh_us_east_2.id]
  depends_on = [
    aws_security_group.ssh_us_east_2
  ]
}
