data "http" "mydesktopip" {
  url = "http://ipv4.icanhazip.com"
}

data "http" "mydesktopip2" {
  url = "http://ipv4.icanhazip.com"
}

resource "azurerm_network_security_rule" "allow-tcp-80" {
  name                        = "allow-tcp-80"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "${chomp(data.http.mydesktopip.response_body)}/32"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.varalakshmi-rg.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}

resource "azurerm_network_security_rule" "allow-tcp-443" {
  name                        = "allow-tcp-443"
  priority                    = 101
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "${chomp(data.http.mydesktopip.response_body)}/32"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.varalakshmi-rg.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}

resource "azurerm_network_security_rule" "allow-tcp-22" {
  name                        = "allow-tcp-22"
  priority                    = 102
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "${chomp(data.http.mydesktopip2.response_body)}/32"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.varalakshmi-rg.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}

resource "azurerm_network_security_rule" "allow-tcp-3389" {
  name                        = "allow-tcp-3389"
  priority                    = 103
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "3389"
  source_address_prefix       = "${chomp(data.http.mydesktopip2.response_body)}/32"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.varalakshmi-rg.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}
resource "azurerm_network_security_rule" "allow-tcp-25" {
  name                        = "allow-tcp-25"
  priority                    = 104
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "25"
  source_address_prefix       = "${chomp(data.http.mydesktopip2.response_body)}/32"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.varalakshmi-rg.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}
resource "azurerm_network_security_rule" "allow-tcp-21" {
  name                        = "allow-tcp-21"
  priority                    = 105
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "21"
  source_address_prefix       = "${chomp(data.http.mydesktopip2.response_body)}/32"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.varalakshmi-rg.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}
