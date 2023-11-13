terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.25.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.80.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "joaocarlos"
      managed-by = "terraform"

    }
  }
}

provider "azurerm" {
  features {

  }

}
