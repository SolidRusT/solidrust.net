# Default S3 bucket us-east-1
resource "aws_s3_bucket" "s3_us_east_1" {
  provider = aws.us-east-1
  bucket = "${local.prefix}-s3-us-east-1"
  force_destroy = true
  lifecycle {
    prevent_destroy = false
  }
  tags = local.common_tags
}

resource "aws_s3_bucket_acl" "s3_us_east_1" {
  provider = aws.us-east-1
  bucket = aws_s3_bucket.s3_us_east_1.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "s3_us_east_1" {
  provider = aws.us-east-1
  bucket = aws_s3_bucket.s3_us_east_1.id
  versioning_configuration {
    status = "Suspended"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_us_east_1" {
  provider = aws.us-east-1
  bucket = aws_s3_bucket.s3_us_east_1.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "s3_us_east_1" {
  provider = aws.us-east-1
  bucket                  = aws_s3_bucket.s3_us_east_1.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Default S3 bucket us-east-2
resource "aws_s3_bucket" "s3_us_east_2" {
  provider = aws.us-east-2
  bucket = "${local.prefix}-s3-us-east-2"
  force_destroy = true
  lifecycle {
    prevent_destroy = false
  }
  tags = local.common_tags
}

resource "aws_s3_bucket_acl" "s3_us_east_2" {
  provider = aws.us-east-2
  bucket = aws_s3_bucket.s3_us_east_2.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "s3_us_east_2" {
  provider = aws.us-east-2
  bucket = aws_s3_bucket.s3_us_east_2.id
  versioning_configuration {
    status = "Suspended"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_us_east_2" {
  provider = aws.us-east-2
  bucket = aws_s3_bucket.s3_us_east_2.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "s3_us_east_2" {
  provider = aws.us-east-2
  bucket                  = aws_s3_bucket.s3_us_east_2.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Default S3 bucket us-west-2
resource "aws_s3_bucket" "s3_us_west_2" {
  provider = aws.us-west-2
  bucket = "${local.prefix}-s3-us-west-2"
  force_destroy = true
  lifecycle {
    prevent_destroy = false
  }
  tags = local.common_tags
}

resource "aws_s3_bucket_acl" "s3_us_west_2" {
  provider = aws.us-west-2
  bucket = aws_s3_bucket.s3_us_west_2.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "s3_us_west_2" {
  provider = aws.us-west-2
  bucket = aws_s3_bucket.s3_us_west_2.id
  versioning_configuration {
    status = "Suspended"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_us_west_2" {
  provider = aws.us-west-2
  bucket = aws_s3_bucket.s3_us_west_2.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "s3_us_west_2" {
  provider = aws.us-west-2
  bucket                  = aws_s3_bucket.s3_us_west_2.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
