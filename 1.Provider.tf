terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.85.0"
    }
}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "varalakshmi-rg"
    storage_account_name = "secops38tfstate"
    container_name       = "tfstate"
    key                  = "githubactions.tfstate"
  }
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}



