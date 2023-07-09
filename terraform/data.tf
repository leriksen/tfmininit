data "azurerm_resource_group" "rg" {
  name = "rg-uniting-iqsr-ae-${var.env}-001"
}

data "azurerm_resource_group" "asp-rg" {
  name = "rg-uniting-ae-shared-${module.subscription.purpose}-001"
}

data "azurerm_resource_group" "apim" {
  count = var.env == "prd" ? 1 : 0
  name = "rg-uniting-apim-ae-prd-001"
}

data "azurerm_client_config" "current" {}

data "azurerm_service_plan" "fa-asp" {
  name                = "asp-fa-uniting-ae-001"
  resource_group_name = data.azurerm_resource_group.asp-rg.name
}

data "azurerm_service_plan" "la-asp" {
  name                = "asp-uniting-ae-001"
  resource_group_name = data.azurerm_resource_group.asp-rg.name
}
