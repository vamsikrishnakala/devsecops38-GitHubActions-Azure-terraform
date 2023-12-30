
resource "azurerm_resource_group" "vedanshi-rg" {
  name     = var.rg_name
  location = var.rg_name_location
  tags = {
    Env = var.rg_env
  }
}
resource "azurerm_resource_group" "vishwak-rg" {
  name     = "vishwak-rg"
  location = "eastus"
  tags = {
    Env = "Development"
  }
}
resource "azurerm_resource_group" "varalakshmi-rg" {
  name     = "varalakshmi-rg"
  location = "eastus"
  tags = {
    Env = "Development"
  }
}