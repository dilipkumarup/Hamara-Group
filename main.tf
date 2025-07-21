resource "azurerm_resource_group" "gittest" {
  name     = "gittest"
  location = "West Europe"
}

resource "azurerm_storage_account" "stg1" {
  name                     = "stg1storageaccount"
  resource_group_name      = azurerm_resource_group.gittest.name
  location                 = azurerm_resource_group.gittest.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  public_network_access_enabled = false
  
}