terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f5c092a3-a10b-4952-9791-a66c5de6792b"
  # Configuration options
}
resource "azurerm_resource_group" "diliprg3" {
  name     = "dilip-rg4"
  location = "West Europe"
}