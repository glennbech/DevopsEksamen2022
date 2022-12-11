terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }

  backend "s3" {
    bucket = "analytics-jim"
    key    = "analytics/jim-terraform.state"
    region = "eu-west-1"
  }

}