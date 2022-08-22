# EC2 demo Instance Profile

resource "aws_iam_instance_profile" "srt_cloud_nginx" {
  name = "${local.prefix}-ec2-nginx-profile"
  role = aws_iam_role.srt_cloud.name
}

# EC2 demo Instance Profile

resource "aws_iam_instance_profile" "srt_cloud_app" {
  name = "${local.prefix}-ec2-app-profile"
  role = aws_iam_role.srt_cloud.name
}
