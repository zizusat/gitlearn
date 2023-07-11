/*

The following links provide the documentation for the new blocks used
in this terraform confibguration file

1.azurerm_windows_virtual_machine - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine

*/

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

resource "azurerm_resource_group" "appgrp6" {
  name     = "app-grp"
  location = "North Europe"
}
