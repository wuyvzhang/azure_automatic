terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "tfstate0113"
    container_name       = "tfstate"
    key                  = "tfstate"
    subscription_id = "177add63-2747-4d6d-a5e4-004dc63b04c6"
    }
}
