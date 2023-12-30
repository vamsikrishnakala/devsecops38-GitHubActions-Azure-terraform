resource "azurerm_subnet" "subnet1" {
  name                 = "subnet1"
  resource_group_name  = azurerm_resource_group.varalakshmi-rg.name      #Implicit Dependency
  virtual_network_name = azurerm_virtual_network.devsecopsb38-vnet1.name #Implicit Dependency
  address_prefixes     = ["10.1.1.0/24"]
}
resource "azurerm_subnet" "subnet2" {
  name                 = "subnet2"
  resource_group_name  = azurerm_resource_group.varalakshmi-rg.name      #Implicit Dependency
  virtual_network_name = azurerm_virtual_network.devsecopsb38-vnet1.name #Implicit Dependency
  address_prefixes     = ["10.1.2.0/24"]
}
resource "azurerm_subnet" "subnet3" {
  name                 = "subnet3"
  resource_group_name  = azurerm_resource_group.varalakshmi-rg.name      #Implicit Dependency
  virtual_network_name = azurerm_virtual_network.devsecopsb38-vnet1.name #Implicit Dependency
  address_prefixes     = ["10.1.3.0/24"]
}
resource "azurerm_subnet" "subnet4" {
  name                 = "subnet4"
  resource_group_name  = azurerm_resource_group.varalakshmi-rg.name      #Implicit Dependency
  virtual_network_name = azurerm_virtual_network.devsecopsb38-vnet1.name #Implicit Dependency
  address_prefixes     = ["10.1.4.0/24"]
}