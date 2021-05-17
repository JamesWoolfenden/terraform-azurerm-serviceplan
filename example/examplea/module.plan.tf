module "plan" {
  source         = "../../"
  resource_group = azurerm_resource_group.resource_group
  common_tags    = var.common_tags
}
