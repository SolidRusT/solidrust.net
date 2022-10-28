resource "aws_security_group" "ssh_us_west_2" {
  provider = aws.us-west-2
  name        = "${local.prefix}-ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = module.vpc_us_west_2.vpc_id
  ingress = [
    {
      description      = "SSH"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]
  egress = [
    {
      description      = "ALL Traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]
  tags = merge(local.common_tags, tomap({
    "Name" = "${local.prefix}-allow_ssh"
  }))
}

resource "aws_security_group" "ssh_us_east_1" {
  provider = aws.us-east-1
  name        = "${local.prefix}-ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = module.vpc_us_east_1.vpc_id
  ingress = [
    {
      description      = "SSH"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]
  egress = [
    {
      description      = "ALL Traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]
  tags = merge(local.common_tags, tomap({
    "Name" = "${local.prefix}-allow_ssh"
  }))
}

resource "aws_security_group" "ssh_us_east_2" {
  provider = aws.us-east-2
  name        = "${local.prefix}-ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = module.vpc_us_east_2.vpc_id
  ingress = [
    {
      description      = "SSH"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]
  egress = [
    {
      description      = "ALL Traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]
  tags = merge(local.common_tags, tomap({
    "Name" = "${local.prefix}-allow_ssh"
  }))
}

resource "aws_iam_role" "srt_cloud" {
  name = "${local.prefix}-ec2-role"
  path = "/"
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

# Allow Systems Manager to manage EC2 instance
resource "aws_iam_policy_attachment" "ec2_ssm" {
  name       = "${local.prefix}-ec2-role-attachment"
  roles      = [aws_iam_role.srt_cloud.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_policy_attachment" "ec2_s3_read_only" {
  name       = "${local.prefix}-ec2-role-attachment"
  roles      = [aws_iam_role.srt_cloud.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
