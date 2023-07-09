terraform {
  required_version = "~>1.5.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.62.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "2.39.0"
    }

    external = {
      source = "hashicorp/external"
      version = "2.3.1"
    }

    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }

  backend "azurerm" {}
}
