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
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}
# Configure the Azure provider
provider "azurerm" { 
  features {}  
   use_oidc         = true
    use_azuread_auth = true
}


