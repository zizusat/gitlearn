# Define Terraform provider
terraform {
  required_version = ">= 1.3"
  backend "azurerm" {
    resource_group_name  = "kopicloud-tstate-rg"
    storage_account_name = "kopicloudtfstate26865"
    container_name       = "tfstate"
    key                  = "l5xtIDDK4ElxBJbl7ewJaQ0h/fvKl4TslL4m3oPVNbFcPgTRrBpmPYo2MUHJnw9MjbdXujgWZxqh+AStB3ZoPA=="
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
