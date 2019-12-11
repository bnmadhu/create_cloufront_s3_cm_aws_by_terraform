resource "aws_s3_bucket" "bucket" {
  bucket = var.Name
  acl    = "private"
  tags = {
    Env = var.Env
    Project = var.Project
    Application = var.Application
    TeamName = var.TeamName
    Owner = var.Owner
    Name = var.Name
  }
}

data "aws_iam_policy_document" "s3_policy" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.bucket.arn}/*"]

    principals {
      type        = "AWS"
      identifiers = [var.Origin]
    }

  }
}

resource "aws_s3_bucket_policy" "policy" {
  bucket = aws_s3_bucket.bucket.id
  policy = data.aws_iam_policy_document.s3_policy.json
}