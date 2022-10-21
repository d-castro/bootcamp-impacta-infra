terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">=1.1.0"

  cloud {
    organization = "LabDevopsCloud-dcastro"

    workspaces {
      name = "bootcamp-impacta"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
