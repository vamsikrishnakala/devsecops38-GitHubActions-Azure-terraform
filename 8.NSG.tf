resource "azurerm_network_security_group" "nsg1" {
  name                = "${azurerm_resource_group.varalakshmi-rg.name}-nsg1"
  location            = azurerm_resource_group.varalakshmi-rg.location
  resource_group_name = azurerm_resource_group.varalakshmi-rg.name
  tags = {
    Env        = "Development"
    CostCenter = "8080"
    Owner      = "JavaApp Team"
    EndDate    = "Jan 24th 2023 "
  }
}



