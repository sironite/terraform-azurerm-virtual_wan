module "virtual_wan" {
  source  = "sironite/virtual_wan/azurerm"
  version = "X.X.X"

  vwan_name                         = "my-virtual-wan"
  resource_group_name               = "my-resource-group"
  location                          = "westus2"
  disable_vpn_encryption            = false
  allow_branch_to_branch_traffic    = true
  office365_local_breakout_category = "default"
  type                              = "default"
  tags = {
    environment = "production"
    cost_center = "12345"
  }
}