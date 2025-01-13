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
    }
}