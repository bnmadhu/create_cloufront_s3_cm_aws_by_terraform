variable "Region" {
  default = "YOU-REGION"
}
variable "Name" {
  default = "NAME-CLOUDFRONT-BUCKET-CM"
}
variable "Project" {
  default = "YOUR-PROJECT"
}
variable "Env" {
  default = "YOUR-ENV"
}
variable "TeamName" {
  default = "YOUR-TEAMNAME"
}
variable "Application" {
  default = "YOUR-APPLICATION"
}
variable "Owner" {
  default = "YOUR-OWNER"
}

variable "Origin" {
  default = "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity YOUR-ORIGIN"
}
variable "origin_access_identity" {
  default = "origin-access-identity/cloudfront/YOUR-ACCESS-IDENTITY"
}
