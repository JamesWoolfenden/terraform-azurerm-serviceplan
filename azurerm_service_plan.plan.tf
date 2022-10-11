resource "azurerm_service_plan" "plan" {
  name                = var.service_plan["name"]
  location            = var.resource_group["location"]
  resource_group_name = var.resource_group["name"]
  os_type             = var.service_plan["os_type"]
  sku_name            = var.service_plan["sku_name"]
  //app_service_environment_id = var.app_service_environment_id
  per_site_scaling_enabled = var.service_plan["per_site_scaling_enabled"]
  worker_count             = var.service_plan["worker_count"]
  zone_balancing_enabled   = var.service_plan["zone_balancing_enabled"]
  tags                     = var.common_tags
}


variable "service_plan" {
  type = map(any)
  default = {
    name                     = "pike"
    os_type                  = "Linux"
    sku_name                 = "P1v2"
    worker_count             = 1
    per_site_scaling_enabled = false
    zone_balancing_enabled   = false
  }
}

variable "app_service_environment_id" {
  type    = string
  default = ""
}
