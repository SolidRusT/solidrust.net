# us-east-1
# Latest Amazon Linux 2 x86_64
data "aws_ami" "aws-2-0-x86_64-us-east-1" {
  owners = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }

  provider = aws.us-east-1
}

# Latest Ubuntu x86_64 LTS
data "aws_ami" "ubuntu-22-04-x86_64-us-east-1" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  
  filter {
        name = "virtualization-type"
        values = ["hvm"]
  }

  provider = aws.us-east-1
}

# Previous Ubuntu x86_64 LTS
data "aws_ami" "ubuntu-20-04-x86_64-us-east-1" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  
  filter {
        name = "virtualization-type"
        values = ["hvm"]
  }

  provider = aws.us-east-1
}

# Latest Ubuntu arm64 LTS
data "aws_ami" "ubuntu-22-04-arm64-us-east-1" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-arm64-server-*"]
  }
  
  filter {
        name = "virtualization-type"
        values = ["hvm"]
  }

  provider = aws.us-east-1
}

# Previous Ubuntu arm64 LTS
data "aws_ami" "ubuntu-20-04-arm64-us-east-1" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-arm64-server-*"]
  }
  
  filter {
        name = "virtualization-type"
        values = ["hvm"]
  }

  provider = aws.us-east-1
}

# us-east-2
# Latest Amazon Linux 2 x86_64
data "aws_ami" "aws-2-0-x86_64-us-east-2" {
  owners = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }

  provider = aws.us-east-2
}

# Latest Ubuntu x86_64 LTS
data "aws_ami" "ubuntu-22-04-x86_64-us-east-2" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  
  filter {
        name = "virtualization-type"
        values = ["hvm"]
  }

  provider = aws.us-east-2
}

# Previous Ubuntu x86_64 LTS
data "aws_ami" "ubuntu-20-04-x86_64-us-east-2" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  
  filter {
        name = "virtualization-type"
        values = ["hvm"]
  }

  provider = aws.us-east-2
}

# Latest Ubuntu arm64 LTS
data "aws_ami" "ubuntu-22-04-arm64-us-east-2" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-arm64-server-*"]
  }
  
  filter {
        name = "virtualization-type"
        values = ["hvm"]
  }

  provider = aws.us-east-2
}

# Previous Ubuntu arm64 LTS
data "aws_ami" "ubuntu-20-04-arm64-us-east-2" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-arm64-server-*"]
  }
  
  filter {
        name = "virtualization-type"
        values = ["hvm"]
  }

  provider = aws.us-east-2
}

# us-west-2
# Latest Amazon Linux 2 x86_64
data "aws_ami" "aws-2-0-x86_64-us-west-2" {
  owners = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }

  provider = aws.us-west-2
}

# Latest Ubuntu x86_64 LTS
data "aws_ami" "ubuntu-22-04-x86_64-us-west-2" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  
  filter {
        name = "virtualization-type"
        values = ["hvm"]
  }

  provider = aws.us-west-2
}

# Previous Ubuntu x86_64 LTS
data "aws_ami" "ubuntu-20-04-x86_64-us-west-2" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  
  filter {
        name = "virtualization-type"
        values = ["hvm"]
  }

  provider = aws.us-west-2
}

# Latest Ubuntu arm64 LTS
data "aws_ami" "ubuntu-22-04-arm64-us-west-2" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-arm64-server-*"]
  }
  
  filter {
        name = "virtualization-type"
        values = ["hvm"]
  }

  provider = aws.us-west-2
}

# Previous Ubuntu arm64 LTS
data "aws_ami" "ubuntu-20-04-arm64-us-west-2" {
  owners = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-arm64-server-*"]
  }
  
  filter {
        name = "virtualization-type"
        values = ["hvm"]
  }

  provider = aws.us-west-2
}
