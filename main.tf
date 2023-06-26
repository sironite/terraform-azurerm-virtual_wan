resource "azurerm_virtual_wan" "this" {
  name                = var.vwan_name
  resource_group_name = var.resource_group_name
  location            = var.location

  disable_vpn_encryption            = var.disable_vpn_encryption
  allow_branch_to_branch_traffic    = var.allow_branch_to_branch_traffic
  office365_local_breakout_category = var.office365_local_breakout_category
  type                              = var.type

  tags = var.tags
}