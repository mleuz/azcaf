terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.24.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "2ebdbb9c-b4d7-4ebb-a236-b00694a909d4"
  client_id       = "2c7df087-29e0-4041-83ce-2d858171f071"
  client_secret   = ""
  tenant_id       = "b109fcb2-65b1-4676-ba01-57c2ab509d59"
  features {
  }
}




