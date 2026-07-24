resource "azurerm_resource_group" "rg" {
  name = "dev-rg1"
  location = "central india"

  tags = {owner = devteam }
}