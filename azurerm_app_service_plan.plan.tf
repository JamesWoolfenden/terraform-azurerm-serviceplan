resource "azurerm_app_service_plan" "plan" {
  name                = var.plan["name"]
  location            = var.resource_group["location"]
  resource_group_name = var.resource_group["name"]

  sku {
    tier = var.plan["tier"]
    size = var.plan["size"]
  }
}
