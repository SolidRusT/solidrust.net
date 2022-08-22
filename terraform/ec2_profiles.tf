# EC2 demo Instance Profile

resource "aws_iam_instance_profile" "srt_cloud" {
  name = "${local.prefix}-ec2-instance-profile"
  role = aws_iam_role.srt_cloud.name
}
