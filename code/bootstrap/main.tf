provider "azurerm" {
  features {}
}

provider "random" {}

resource "random_id" "random_id" {
  byte_length = 4
}

resource "azurerm_resource_group" "terraform_state" {
  name     = "terraform-state"
  location = "westeurope"
}

resource "azurerm_storage_account" "terraform_state" {
  name                     = "terraformstate${random_id.random_id.hex}"
  resource_group_name      = azurerm_resource_group.terraform_state.name
  location                 = azurerm_resource_group.terraform_state.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "terraform_state" {
  name                  = "terraform-state"
  storage_account_name  = azurerm_storage_account.terraform_state.name
  container_access_type = "private"
}
