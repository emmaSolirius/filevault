resource "azurerm_container_registry" "registry" {
  name                = "${var.base_name_alphanumeric}registry"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
}
