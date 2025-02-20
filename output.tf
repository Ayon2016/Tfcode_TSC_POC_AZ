output "public_ips" {
  value = [azurerm_public_ip.public_ip1.ip_address, azurerm_public_ip.public_ip2.ip_address]
}

output "private_ips" {
  value = [azurerm_network_interface.nic1.private_ip_address, azurerm_network_interface.nic2.private_ip_address]
}