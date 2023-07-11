
  
provider "azurerm" {
  version = "~> 1.23"
  use_msi = true

  backend "azurerm" {
    resource_group_name  = "Terraform"
storage_account_name = "tfsatya"
container_name       = "tfstate1234"
key                  = "sasdsdda.tfstate"
  }
}
