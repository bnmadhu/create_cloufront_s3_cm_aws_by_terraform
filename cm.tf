resource "aws_acm_certificate" "cert" {
  domain_name       = var.Name
  validation_method = "DNS"

  tags = {
    Env = var.Env
    Project = var.Project
    Application = var.Application
    TeamName = var.TeamName
    Owner = var.Owner
    Name = var.Name
  }

  lifecycle {
    create_before_destroy = true
  }
  provider = aws.virginia
}