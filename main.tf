resource "azurerm_resource_group" "example" {
  name     = "AnujPipe-rg"
  location = "East US"
}


resource "azurerm_storage_account" "example" {
  name                     = "pipelinestorage2025"
  resource_group_name      = "AnujPipe-rg"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  
  }

terraform {
  backend "azurerm" {
    resource_group_name  = "AnujPipe-rg"        # Replace with your RG name
    storage_account_name = "pipelinestorage2025"       # Must be globally unique
    container_name       = "tfstate"                # Container to store state files
    key                  = "terraform.tfstate"       # Name of the state file
  }
}




container --- pipelinecont