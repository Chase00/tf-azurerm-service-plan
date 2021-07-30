provider "azurerm" {
  features {}
  subscription_id            = ""
  tenant_id                  = ""
  skip_provider_registration = true
}

resource "azurerm_app_service_plan" "sp" {
  name                = "sp-00"
  location            = "eastus"
  resource_group_name = "rg-00"
  kind                = "linux"

  sku {
    tier = "Standard"
    size = "S1"
  }
}