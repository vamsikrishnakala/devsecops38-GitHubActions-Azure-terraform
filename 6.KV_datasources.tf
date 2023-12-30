data "azurerm_client_config" "current" {}

data "azurerm_key_vault" "devsecopsb38keyvault" {
  name                = "devsecopsb38keyvault"
  resource_group_name = "varalakshmi-rg"
}

resource "azurerm_key_vault_access_policy" "devopsb38-sp-access" {
  key_vault_id = data.azurerm_key_vault.devsecopsb38keyvault.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = data.azurerm_client_config.current.object_id
  secret_permissions = [
    "Get",
    "List",
    "Purge",
    "Recover",
    "Restore",
    "Set",
    "Delete",
    "Recover"

  ]
}