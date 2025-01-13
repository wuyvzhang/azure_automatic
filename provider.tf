provider "azurerm" {
  features = {}
}

terraform {
  required_version = ">= 0.14"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.1.0"
    }
  }

  backend "azurerm" {
      resource_group_name  = "rg-tfstate"
      storage_account_name = "tfstate0113"
      container_name       = "tfstate"
      key                  = "tfstate"
      tenant_id            = "a55b816c-e99d-4af2-b69c-60fb4f03bef5"
      subscription_id      = "177add63-2747-4d6d-a5e4-004dc63b04c6"
    }
}