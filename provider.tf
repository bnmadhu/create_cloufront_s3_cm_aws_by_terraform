provider "aws" {
  profile    = "joelDevStorm"
  region     = var.Region
  assume_role {
    role_arn     = "arn:aws:iam::596649013084:role/sdk-joel-test"
  }
}

provider "aws" {
  profile    = "joelDevStorm"
  region     = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::596649013084:role/sdk-joel-test"
  }
  alias = "virginia"
}