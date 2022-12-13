module "plan" {
  source         = "../../"
  resource_group = azurerm_resource_group.resource_group
  common_tags    = var.common_tags
  service_plan = {
    name                     = "pike"
    os_type                  = "Linux"
    sku_name                 = "P1v2"
    worker_count             = 2
    per_site_scaling_enabled = false
    zone_balancing_enabled   = false
  }
}
