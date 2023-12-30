
resource "azurerm_virtual_network" "devsecopsb38-vnet1" {
  name                = "${azurerm_resource_group.varalakshmi-rg.name}-vnetname"
  location            = azurerm_resource_group.varalakshmi-rg.location
  resource_group_name = azurerm_resource_group.varalakshmi-rg.name
  address_space       = [var.vnet1_cidr]
  dns_servers         = var.vnet_dns
}

