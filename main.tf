terraform {

  backend "azurerm" {
    use_msi    = true
  }


  
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.0.2, < 4.0.0"
    }
  }
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}
