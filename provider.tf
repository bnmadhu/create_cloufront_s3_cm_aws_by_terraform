provider "aws" {
  profile    = "YOUR-PROFILE"
  region     = var.Region
  assume_role {
    role_arn     = "YOUR-ARN-ASSUME-ROLE"
  }
}

provider "aws" {
  profile    = "YOUR-PROFILE"
  region     = "us-east-1"
  assume_role {
    role_arn     = "YOUR-ARN-ASSUME-ROLE"
  }
  alias = "virginia"
}
