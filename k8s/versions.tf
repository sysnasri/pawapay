terraform {
  backend "s3" {
    bucket         = "terraform-state-pawapay-project"
    key            = "terraform-state-key"
    region         = "us-east-1"
    dynamodb_table = "terraform-pawapay-state"

  }
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.20.0"

    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.13.1"
    }
    ovh = {
      source  = "ovh/ovh"
      version = "0.16.0"

    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }

  required_version = ">= 0.14"
}

