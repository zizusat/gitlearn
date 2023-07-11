# Define Terraform provider
terraform {
  required_version = ">= 1.3"
  backend "azurerm" {
    resource_group_name  = "Terraform"
    storage_account_name = "tfsatya"
    container_name       = "tfstate1234"
    key                  = "sasa.tfstate"
  }
  required_providers {
    azurerm = {
      version = "~>3.2"
      source  = "hashicorp/azurerm"
    }
  }
}

