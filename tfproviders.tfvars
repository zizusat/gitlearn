# Define Terraform provider
terraform {
  required_version = ">= 1.3"
  backend "azurerm" {
    resource_group_name  = "Terraform"
    storage_account_name = "tfsatya"
    container_name       = "tfstate1234"
    key                  = "sasdsda.tfstate"
  }
  required_providers {
    azurerm = {
      version = "~>3.2"
      source  = "hashicorp/azurerm"
       use_msi = true
features { 
resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }
    }
  }
}

