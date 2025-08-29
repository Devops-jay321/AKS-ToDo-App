terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "845670d0-6329-46a7-97a7-fe36dbdce51b"
}