<!-- BEGIN_TF_DOCS -->
 # Azure Virtual WAN
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-virtual_wan/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_wan)

# Usage - Module

## virtual WAN
```hcl
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
```

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_wan.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_wan) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| location | Azure region where the Virtual WAN will be deployed | `string` | yes |
| resource\_group\_name | Name of the resource group | `string` | yes |
| vwan\_name | Name of the Azure Virtual WAN | `string` | yes |
| allow\_branch\_to\_branch\_traffic | Indicates whether branch-to-branch traffic is allowed | `bool` | no |
| disable\_vpn\_encryption | Indicates whether VPN encryption is disabled | `bool` | no |
| office365\_local\_breakout\_category | Category of Office 365 local breakout | `string` | no |
| tags | Tags to associate with the Virtual WAN | `map(string)` | no |
| type | Type of the Virtual WAN | `string` | no |

## Outputs

| Name | Description |
|------|-------------|
| virtual\_wan\_id | n/a |
| virtual\_wan\_name | n/a |

## Related documentation
<!-- END_TF_DOCS -->