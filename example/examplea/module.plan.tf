module "plan" {
  source         = "../../"
  resource_group = data.azurerm_resource_group.resource_group
  common_tags    = var.common_tags
}
