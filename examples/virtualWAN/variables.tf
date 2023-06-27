variable "vwan_name" {
  description = "Name of the Azure Virtual WAN"
  type        = string
  sensitive   = false
}
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  sensitive   = false
}
variable "location" {
  description = "Azure region where the Virtual WAN will be deployed"
  type        = string
  sensitive   = false
}
variable "disable_vpn_encryption" {
  description = "Indicates whether VPN encryption is disabled"
  type        = bool
  default     = false
  sensitive   = false
}
variable "allow_branch_to_branch_traffic" {
  description = "Indicates whether branch-to-branch traffic is allowed"
  type        = bool
  default     = true
  sensitive   = false
}
variable "office365_local_breakout_category" {
  description = "Category of Office 365 local breakout"
  type        = string
  default     = "None"
  sensitive   = false
}
variable "type" {
  description = "Type of the Virtual WAN"
  type        = string
  default     = "Standard"
  sensitive   = false
}
variable "tags" {
  description = "Tags to associate with the Virtual WAN"
  type        = map(string)
  default     = {}
  sensitive   = false
}