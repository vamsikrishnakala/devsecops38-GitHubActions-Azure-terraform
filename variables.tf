variable "rg_name" {}
variable "rg_name_location" {}
variable "rg_env" {}
variable "vnet1_cidr" {}
variable "vnet_dns" {
  default = ["8.8.8.8", "8.8.4.4"]
}
variable "kvname" {}