
  
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
provider "azurerm" {
  features {
subscription_id   ="9b4f8ab9-0f32-4d9d-a63e-a9ad9e4c8eec"
  }
}
