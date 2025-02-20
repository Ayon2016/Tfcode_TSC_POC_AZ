resource "azurerm_linux_virtual_machine" "vm1" {
  name                = "locust-master"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B1s"
  admin_username      = "azureuser"

  network_interface_ids = [azurerm_network_interface.nic1.id]

  admin_ssh_key {
    username   = "azureuser"
    # public_key = file("/Users/ayon.choudhury/Desktop/Ayon_Self_Learning/key/key.pub")  # Replace with your key path
    public_key = "AAAAB3NzaC1yc2EAAAADAQABAAABAQCafJAWIugLRuXD8NV2rlKNPwbiG5sFtaK0PWQyK10Sl9kjaA+N58TfxL20q57Dhch1nYZQnle6qF7eQruaMaDBFblaHeZhn1lTnSrwFmbRd95vR2CaYIXMUoK8Vwc1ANe+heWjrXTYJXfB2ALyZ6K2Az6Qr91sotckzl7ncx/EH9kwbiRKTkGRtnmydzkEXsQHzAeENgUPgVWYYZhoUM691nKgs3BozCHvnU0rXtCsyDDaw+MlN7qJ/vf6S31YXcgxoZQXqJwh/0KzsLUCOI3Vq1K0sVa+l+Av0z/OKnBI+Vm5tLUvziLsXmIkmguRvTIU2G9tIQVhzg1QgpywVFZH ayon.choudhury@C02G869CMD6M"
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}

resource "azurerm_linux_virtual_machine" "vm2" {
  name                = "locust-worker"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B1s"
  admin_username      = "azureuser"

  network_interface_ids = [azurerm_network_interface.nic2.id]

  admin_ssh_key {
    username   = "azureuser"
    # public_key = file("/Users/ayon.choudhury/Desktop/Ayon_Self_Learning/key/key.pub")
    public_key = "AAAAB3NzaC1yc2EAAAADAQABAAABAQCafJAWIugLRuXD8NV2rlKNPwbiG5sFtaK0PWQyK10Sl9kjaA+N58TfxL20q57Dhch1nYZQnle6qF7eQruaMaDBFblaHeZhn1lTnSrwFmbRd95vR2CaYIXMUoK8Vwc1ANe+heWjrXTYJXfB2ALyZ6K2Az6Qr91sotckzl7ncx/EH9kwbiRKTkGRtnmydzkEXsQHzAeENgUPgVWYYZhoUM691nKgs3BozCHvnU0rXtCsyDDaw+MlN7qJ/vf6S31YXcgxoZQXqJwh/0KzsLUCOI3Vq1K0sVa+l+Av0z/OKnBI+Vm5tLUvziLsXmIkmguRvTIU2G9tIQVhzg1QgpywVFZH ayon.choudhury@C02G869CMD6M"
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}