terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }
  
  backend "s3" {
    
    bucket = "analytics-${var.candidate_id}"
    key = "viba003/apprunner-a-new-state.state"
    region = "eu-west-1"
  }

}