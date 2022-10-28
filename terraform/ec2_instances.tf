# EC2 WEB Instance Profile
resource "aws_iam_instance_profile" "web" {
  name = "${local.prefix}-ec2-web-profile"
  role = aws_iam_role.srt_cloud.name
}

# EC2 APP Instance Profile
resource "aws_iam_instance_profile" "app" {
  name = "${local.prefix}-ec2-app-profile"
  role = aws_iam_role.srt_cloud.name
}

# EC2 PROXY Instance Profile
resource "aws_iam_instance_profile" "proxy" {
  name = "${local.prefix}-ec2-proxy-profile"
  role = aws_iam_role.srt_cloud.name
}

## US-WEST-2 (Oregon)
# WEB-1 instance us-west-2
resource "aws_instance" "web_us_west_2_instance_1" {
  provider = aws.us-west-2
  ami                  = data.aws_ami.ubuntu-22-04-arm64-us-west-2.id
  instance_type        = var.web_instance_type
  availability_zone    = "us-west-2a"
  iam_instance_profile = aws_iam_instance_profile.web.name
  network_interface {
    network_interface_id = aws_network_interface.web_us_west_2_public_1.id
    device_index         = 0
  }
  network_interface {
    network_interface_id = aws_network_interface.web_us_west_2_private_1.id
    device_index         = 1
  }
  key_name = local.ssh_key_name_us_west_2
  tags = merge(local.common_tags, tomap({
    "Name" = "${local.prefix}-web-public"
  }))
  depends_on = [
  #  module.endpoints_us_west_2
    aws_security_group.ssh_us_west_2
  ]
}

resource "aws_network_interface" "web_us_west_2_public_1" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.public_subnets[0]
  security_groups = [aws_security_group.ssh_us_west_2.id]
  depends_on = [
    aws_security_group.ssh_us_west_2
  ]
}

resource "aws_network_interface" "web_us_west_2_private_1" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.private_subnets[0]
  security_groups = [aws_security_group.ssh_us_west_2.id]
  depends_on = [
    aws_security_group.ssh_us_west_2
  ]
}

# WEB-2 instance us-west-2
resource "aws_instance" "web_us_west_2_instance_2" {
  provider = aws.us-west-2
  ami                  = data.aws_ami.ubuntu-22-04-arm64-us-west-2.id
  instance_type        = var.web_instance_type
  availability_zone    = "us-west-2b"
  iam_instance_profile = aws_iam_instance_profile.web.name
  network_interface {
    network_interface_id = aws_network_interface.web_us_west_2_public_2.id
    device_index         = 0
  }
  network_interface {
    network_interface_id = aws_network_interface.web_us_west_2_private_2.id
    device_index         = 1
  }
  key_name = local.ssh_key_name_us_west_2
  tags = merge(local.common_tags, tomap({
    "Name" = "${local.prefix}-web-public"
  }))
  depends_on = [
  #  module.endpoints_us_west_2
    aws_security_group.ssh_us_west_2
  ]
}

resource "aws_network_interface" "web_us_west_2_public_2" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.public_subnets[1]
  security_groups = [aws_security_group.ssh_us_west_2.id]
  depends_on = [
    aws_security_group.ssh_us_west_2
  ]
}

resource "aws_network_interface" "web_us_west_2_private_2" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.private_subnets[1]
  security_groups = [aws_security_group.ssh_us_west_2.id]
  depends_on = [
    aws_security_group.ssh_us_west_2
  ]
}

# APP instance us-west-2
resource "aws_instance" "app_us_west_2_private_1" {
  provider = aws.us-west-2
  ami                  = data.aws_ami.ubuntu-22-04-x86_64-us-west-2.id
  instance_type        = var.app_instance_type
  availability_zone    = "us-west-2a"
  iam_instance_profile = aws_iam_instance_profile.app.name
  network_interface {
    network_interface_id = aws_network_interface.app_us_west_2_public_1.id
    device_index         = 0
  }
  network_interface {
    network_interface_id = aws_network_interface.app_us_west_2_private_1.id
    device_index         = 1
  }
  key_name = local.ssh_key_name_us_west_2
  tags = merge(local.common_tags, tomap({
    "Name" = "${local.prefix}-app-private"
  }))
  depends_on = [
  #  module.endpoints_us_west_2
    aws_security_group.ssh_us_west_2
  ]
}

resource "aws_network_interface" "app_us_west_2_public_1" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.public_subnets[0]
  security_groups = [aws_security_group.ssh_us_west_2.id]
  depends_on = [
    aws_security_group.ssh_us_west_2
  ]
}

resource "aws_network_interface" "app_us_west_2_private_1" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.private_subnets[0]
  security_groups = [aws_security_group.ssh_us_west_2.id]
  depends_on = [
    aws_security_group.ssh_us_west_2
  ]
}

# Proxy public web us-west-2
resource "aws_instance" "proxy_us_west_2_instance_1" {
  provider = aws.us-west-2
  ami                  = data.aws_ami.ubuntu-22-04-x86_64-us-west-2.id
  instance_type        = var.proxy_instance_type
  availability_zone    = "us-west-2a"
  iam_instance_profile = aws_iam_instance_profile.proxy.name
  network_interface {
    network_interface_id = aws_network_interface.proxy_1_us_west_2_public.id
    device_index         = 0
  }
  network_interface {
    network_interface_id = aws_network_interface.proxy_1_us_west_2_private.id
    device_index         = 1
  }
  key_name = local.ssh_key_name_us_west_2
  tags = merge(local.common_tags, tomap({
    "Name" = "${local.prefix}-proxy-public"
  }))
  depends_on = [
  #  module.endpoints_us_west_2
    aws_security_group.ssh_us_west_2
  ]
}

resource "aws_network_interface" "proxy_1_us_west_2_public" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.public_subnets[0]
  security_groups = [aws_security_group.ssh_us_west_2.id]
  depends_on = [
    aws_security_group.ssh_us_west_2
  ]
}

resource "aws_network_interface" "proxy_1_us_west_2_private" {
  provider = aws.us-west-2
  subnet_id   = module.vpc_us_west_2.private_subnets[0]
  security_groups = [aws_security_group.ssh_us_west_2.id]
  depends_on = [
    aws_security_group.ssh_us_west_2
  ]
}

## US-EAST-1 (N. Virginia)
# APP instance us-east-1
resource "aws_instance" "app_1_us_east_1_private_1" {
  provider = aws.us-east-1
  ami                  = data.aws_ami.ubuntu-22-04-x86_64-us-east-1.id
  instance_type        = var.app_instance_type
  availability_zone    = "us-east-1a"
  iam_instance_profile = aws_iam_instance_profile.app.name
  network_interface {
    network_interface_id = aws_network_interface.app_1_us_east_1_public.id
    device_index         = 0
  }
  network_interface {
    network_interface_id = aws_network_interface.app_1_us_east_1_private.id
    device_index         = 1
  }
  key_name = local.ssh_key_name_us_east_1
  tags = merge(local.common_tags, tomap({
    "Name" = "${local.prefix}-app-private"
  }))
  depends_on = [
  #  module.endpoints_us_east_1
    aws_security_group.ssh_us_east_1
  ]
}

