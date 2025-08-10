resource "azurerm_resource_group" "example" {
  name     = "anujPipe-rg"
  location = "East US"
}


resource "azurerm_storage_account" "example" {
  name                     = "anujpipelinestorage2025"
  resource_group_name      = "anujPipe12-rg"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  
  }

