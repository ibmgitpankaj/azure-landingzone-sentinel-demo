# test change
resource "azurerm_resource_group" "rg" {
  name     = "demo-rg"
  location = "East US"
}

resource "azurerm_storage_account" "storage" {
  name                     = "demostorage12345"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
