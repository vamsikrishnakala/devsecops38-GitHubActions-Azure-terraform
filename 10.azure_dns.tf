data "azurerm_dns_zone" "kala" {
  name                = "kala.com"
  resource_group_name = "varalakshmi-rg"
}

resource "azurerm_dns_a_record" "vm1" {
  name                = "vm1"
  zone_name           = data.azurerm_dns_zone.kala.name
  resource_group_name = data.azurerm_dns_zone.kala.resource_group_name
  ttl                 = 300
  records             = ["10.1.1.101"]
}
resource "azurerm_dns_a_record" "vm2" {
  name                = "vm2"
  zone_name           = data.azurerm_dns_zone.kala.name
  resource_group_name = data.azurerm_dns_zone.kala.resource_group_name
  ttl                 = 300
  records             = ["10.1.1.102"]
}
resource "azurerm_dns_a_record" "vm3" {
  name                = "vm3"
  zone_name           = data.azurerm_dns_zone.kala.name
  resource_group_name = data.azurerm_dns_zone.kala.resource_group_name
  ttl                 = 300
  records             = ["10.1.1.103"]
}
