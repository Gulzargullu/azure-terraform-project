terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "tfstate201gul"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}