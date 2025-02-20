terraform {
  backend "azurerm" {
    resource_group_name  = "locust-monitor-rg"
    storage_account_name = "tscpocaccount"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}