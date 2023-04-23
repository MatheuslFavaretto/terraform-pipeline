terraform {

  required_version = ">= 1.0.0"

  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.52.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "matheusremotestate"
    container_name       = "remotestate"
    key                  = "pipeline-gihub-actions/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"
  config = {
    resource_group_name  = "remote-state"
    storage_account_name = "matheusremotestate"
    container_name       = "remotestate"
    key                  = "azure-vnet/terraform.tfstate"
  }

}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "MatheuslFavaretto"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "matheusf-remote-state"
    key    = "aws-vpc/terrform.tfstate"
    region = "sa-east-1"
  }
}
