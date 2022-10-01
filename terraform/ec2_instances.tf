# web public web us-west-2
resource "aws_instance" "web_us_west_2_instance_1" {
  ami                  = data.aws_ami.ubuntu-22-04-arm64-us-west-2.id
  instance_type        = var.web_instance_type
  availability_zone    = "us-west-2a"
  iam_instance_profile = aws_iam_instance_profile.srt_cloud_web.name

  network_interface {
    network_interface_id = aws_network_interface.web_1_us_west_2_public.id
    device_index         = 0
  }
  network_interface {
    network_interface_id = aws_network_interface.web_1_us_west_2_private.id
    device_index         = 1
  }

  key_name = local.ssh_key_name_us_west_2

  tags = {
    Name = "${local.prefix}-web-public"
  }

  provider = aws.us-west-2

  depends_on = [
    module.endpoints_us_west_2
  ]
}

resource "aws_instance" "web_us_west_2_instance_2" {
  ami                  = data.aws_ami.ubuntu-22-04-arm64-us-west-2.id
  instance_type        = var.web_instance_type
  availability_zone    = "us-west-2b"
  iam_instance_profile = aws_iam_instance_profile.srt_cloud_web.name

  network_interface {
    network_interface_id = aws_network_interface.web_2_us_west_2_public.id
    device_index         = 0
  }
  network_interface {
    network_interface_id = aws_network_interface.web_2_us_west_2_private.id
    device_index         = 1
  }

  key_name = local.ssh_key_name_us_west_2

  tags = {
    Name = "${local.prefix}-web-public"
  }

  provider = aws.us-west-2

  depends_on = [
    module.endpoints_us_west_2
  ]
}

# APP instance us-west-2
resource "aws_instance" "app_1_us_west_2_private_1" {
  ami                  = data.aws_ami.ubuntu-22-04-x86_64-us-west-2.id
  instance_type        = var.app_instance_type
  availability_zone    = "us-west-2a"
  iam_instance_profile = aws_iam_instance_profile.srt_cloud_app.name

  network_interface {
    network_interface_id = aws_network_interface.app_1_us_west_2_public.id
    device_index         = 0
  }
  network_interface {
    network_interface_id = aws_network_interface.app_1_us_west_2_private.id
    device_index         = 1
  }

  key_name = local.ssh_key_name_us_west_2

  tags = {
    Name = "${local.prefix}-app-private"
  }

  provider = aws.us-west-2

  depends_on = [
    module.endpoints_us_west_2
  ]
}

# APP instance us-east-1
resource "aws_instance" "app_1_us_east_1_private_1" {
  ami                  = data.aws_ami.ubuntu-22-04-x86_64-us-east-1.id
  instance_type        = var.app_instance_type
  availability_zone    = "us-east-1a"
  iam_instance_profile = aws_iam_instance_profile.srt_cloud_app.name

  network_interface {
    network_interface_id = aws_network_interface.app_1_us_east_1_public.id
    device_index         = 0
  }
  network_interface {
    network_interface_id = aws_network_interface.app_1_us_east_1_private.id
    device_index         = 1
  }

  key_name = local.ssh_key_name_us_east_1

  tags = {
    Name = "${local.prefix}-app-private"
  }

  provider = aws.us-east-1

  depends_on = [
    module.endpoints_us_east_1
  ]
}

# Proxy public web us-west-2
resource "aws_instance" "proxy_us_west_2_instance_1" {
  ami                  = data.aws_ami.ubuntu-22-04-arm64-us-west-2.id
  instance_type        = var.proxy_instance_type
  availability_zone    = "us-west-2a"
  iam_instance_profile = aws_iam_instance_profile.srt_cloud_proxy.name

  network_interface {
    network_interface_id = aws_network_interface.proxy_1_us_west_2_public.id
    device_index         = 0
  }
  network_interface {
    network_interface_id = aws_network_interface.proxy_1_us_west_2_private.id
    device_index         = 1
  }

  key_name = local.ssh_key_name_us_west_2

  tags = {
    Name = "${local.prefix}-proxy-public"
  }

  provider = aws.us-west-2

  depends_on = [
    module.endpoints_us_west_2
  ]
}