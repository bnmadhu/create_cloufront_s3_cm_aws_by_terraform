output "arn_s3_bucket" {
  value = aws_s3_bucket.bucket.arn
}
output "cloudfront_cdn" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}