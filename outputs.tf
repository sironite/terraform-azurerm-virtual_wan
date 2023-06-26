output "virtual_wan_id" {
  value     = azurerm_virtual_wan.this.id
  sensitive = false
}
output "virtual_wan_name" {
  value     = azurerm_virtual_wan.this.name
  sensitive = false
}