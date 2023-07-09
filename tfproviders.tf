# Define Terraform provider
terraform {
  required_version = ">= 1.3"
  backend "azurerm" {
    resource_group_name  = "Terraform"
    storage_account_name = "tfsatya"
    container_name       = "tfstate123"
    key                  = "0qMaDUuakpanuXay99%2BO5%2BqF7pfEjwzmTrbuUVpCJlE%3D"
  }
  required_providers {
    azurerm = {
      version = "~>3.2"
      source  = "hashicorp/azurerm"
    }
  }
}
# Configure the Azure provider
provider "azurerm" { 
  features {}  
}
