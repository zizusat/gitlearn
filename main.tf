terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.53.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
 
  features { 
  }
}
resource "azurerm_resource_group" "appgrp" {
  name     = "app-grp"
  location = "North Europe"
}
resource "azurerm_storage_account" "appstore5595" {
  name                     = "appstore5595"
  resource_group_name      = "app-grp"
  location                 = "North Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
}
resource "azurerm_storage_container" "data" {
  name                  = "data"
  storage_account_name  = "appstore5595"
  container_access_type = "blob"
}
resource "azurerm_storage_blob" "maintf" {
  name                   = "main.tf"
  storage_account_name   = "appstore5595"
  storage_container_name = "data"
  type                   = "Block"
  source                 = "main.tf"
}
