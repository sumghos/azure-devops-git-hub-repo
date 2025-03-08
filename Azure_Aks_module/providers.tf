  terraform {
  required_version = ">1.0"
  required_providers {
    azapi={
      source="azure/azapi"
      version="~1.5"
    }
    azurerm={
      source="hashicorp/azurerm"
      version="~3.0"
    }
    random = {
      source= "hashcorp/random"
      version="~3.0"
    }
    time = {
      source="hashicorp/time"
      version="0.9.1"
    }
  }
}

provider "azurerm" {
  subscription_id = "f5c16230-d333-4eb7-ac4c-ca790ecf432f"
  tenant_id = "10b2fe50-512e-4a87-b279-0c4c2db1f0dc"
  client_id = "d809d8a5-0d32-4743-98d5-47a512a69ad1"
  client_secret = "-k08Q~3lVBIDZ3fPr7VLGuPdpIFttb0TZlvMAamt"
  features {}
}