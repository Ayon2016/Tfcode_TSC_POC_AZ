output "locust_master_public_ip" {
  value = azurerm_public_ip.public_ip1.ip_address
}

output "locust_worker_public_ip" {
  value = azurerm_public_ip.public_ip2.ip_address
}

output "locust_master_private_ip" {
  value = azurerm_network_interface.nic1.private_ip_address
}