resource "azurerm_key_vault_secret" "password_1" {
  name         = "password1"
  value        = random_password.password_1.result
  key_vault_id = data.azurerm_key_vault.devsecopsb38keyvault.id
  depends_on = [
    azurerm_key_vault_access_policy.devopsb38-sp-access
  ]
}
resource "azurerm_key_vault_secret" "password_2" {
  name         = "password2"
  value        = random_password.password_2.result
  key_vault_id = data.azurerm_key_vault.devsecopsb38keyvault.id
  depends_on = [
    azurerm_key_vault_access_policy.devopsb38-sp-access
  ]
}
resource "azurerm_key_vault_secret" "password_3" {
  name         = "password3"
  value        = random_password.password_3.result
  key_vault_id = data.azurerm_key_vault.devsecopsb38keyvault.id
  depends_on = [
    azurerm_key_vault_access_policy.devopsb38-sp-access
  ]
}
resource "azurerm_key_vault_secret" "password_4" {
  name         = "password4"
  value        = random_password.password_4.result
  key_vault_id = data.azurerm_key_vault.devsecopsb38keyvault.id
  depends_on = [
    azurerm_key_vault_access_policy.devopsb38-sp-access
  ]
}
resource "azurerm_key_vault_secret" "password_5" {
  name         = "password5"
  value        = random_password.password_5.result
  key_vault_id = data.azurerm_key_vault.devsecopsb38keyvault.id
  depends_on = [
    azurerm_key_vault_access_policy.devopsb38-sp-access
  ]
}
resource "azurerm_key_vault_secret" "password_6" {
  name         = "password6"
  value        = random_password.password_6.result
  key_vault_id = data.azurerm_key_vault.devsecopsb38keyvault.id
  depends_on = [
    azurerm_key_vault_access_policy.devopsb38-sp-access
  ]
}