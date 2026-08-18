resource "azurerm_resource_group" "rg" {
name = "rg1"
location = "westus"
}

resource "azurerm_storage_account" "sa" {
name = "uniquesa54321"
location = "westus"
resource_group_name = "rg1"
account_tier = "Standard"
account_replication_type = "LRS"
}

resource "azurerm_virtual_network" "vnet" {
    name = "vnet1"
    location = "westus"
    resource_group_name = "rg1"
    address_space = ["10.0.0.1"]
}
