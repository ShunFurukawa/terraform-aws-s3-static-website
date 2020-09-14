provider "aws" {
  version = "~> 2.0"
  region  = "ap-northeast-1"
  profile = "furukawa-aws-cli"
}

terraform {
  backend "s3" {
    bucket  = "furukawa-terraform-tfstate"
    key     = "furukawa-terraform.tfstate"
    region  = "ap-northeast-1"
    profile = "furukawa-aws-cli"
  }
}

variable "domain_name" {
  default = "s-furukawa.work"
}
