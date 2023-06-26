# Terraform module | AzureRM - virtual WAN

This Terraform module is designed to create a virtual WAN for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`virtual WAN`

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

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
