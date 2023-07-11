
  backend "azurerm" {
    resource_group_name  = "Terraform"
storage_account_name = "tfsatya"
container_name       = "tfstate1234"
key                  = "sasdsdda.tfstate"
  }

provider "azurerm" {
  features {
use_msi = true
  }
}
