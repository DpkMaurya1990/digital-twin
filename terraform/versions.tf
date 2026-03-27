terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Stable version for now
    }
  }

  # --- IS BLOCK KO ADD KARNA ZAROORI HAI ---
  backend "s3" {
    bucket         = "twin-terraform-state-211125631519"
    key            = "global/s3/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "twin-terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "ap-south-1" 
}