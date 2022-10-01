# EC2 web Instance Profile

resource "aws_iam_instance_profile" "srt_cloud_web" {
  name = "${local.prefix}-ec2-web-profile"
  role = aws_iam_role.srt_cloud.name
}

# EC2 APP Instance Profile

resource "aws_iam_instance_profile" "srt_cloud_app" {
  name = "${local.prefix}-ec2-app-profile"
  role = aws_iam_role.srt_cloud.name
}

# EC2 Proxy Instance Profile

resource "aws_iam_instance_profile" "srt_cloud_proxy" {
  name = "${local.prefix}-ec2-proxy-profile"
  role = aws_iam_role.srt_cloud.name
}