resource "azurerm_storage_account" "store1" {
  name                     = "bnrstore1"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "vhds"
  storage_account_id    = azurerm_storage_account.example.id
  container_access_type = "private"
}