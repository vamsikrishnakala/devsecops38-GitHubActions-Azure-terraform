resource "random_password" "password_1" {
  length           = 16
  min_lower        = 4
  min_upper        = 4
  min_numeric      = 4
  min_special      = 4
  special          = true
  override_special = "!$%&"
  depends_on       = [azurerm_subnet.subnet4]
}
resource "random_password" "password_2" {
  length           = 16
  min_lower        = 4
  min_upper        = 4
  min_numeric      = 4
  min_special      = 4
  special          = true
  override_special = "!$%&"
  depends_on       = [random_password.password_1]
}
resource "random_password" "password_3" {
  length           = 16
  min_lower        = 4
  min_upper        = 4
  min_numeric      = 4
  min_special      = 4
  special          = true
  override_special = "!$%&"
  depends_on       = [random_password.password_2]
}
resource "random_password" "password_4" {
  length           = 16
  min_lower        = 4
  min_upper        = 4
  min_numeric      = 4
  min_special      = 4
  special          = true
  override_special = "!$%&"
  depends_on       = [random_password.password_3]
}
resource "random_password" "password_5" {
  length           = 16
  min_lower        = 4
  min_upper        = 4
  min_numeric      = 4
  min_special      = 4
  special          = true
  override_special = "!$%&"
  depends_on       = [random_password.password_4]
}
resource "random_password" "password_6" {
  length           = 16
  min_lower        = 4
  min_upper        = 4
  min_numeric      = 4
  min_special      = 4
  special          = true
  override_special = "!#%&"
  depends_on       = [random_password.password_5]
}