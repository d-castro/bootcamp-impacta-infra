provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}

provider "helm" {
  kubernetes {
    host                   = module.eks.cluster_endpoint
    cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  }
}

provider "null" {
}

provider "aws" {
   region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket     = "terraform-state-files-aws"
    key        = "file/bootcamp-terraform-state"
    region     = "us-east-1"    
  }
}