# main.tf

# Define the resources for the example-module

# Example resource
resource "azurerm_resource_group" "example_resource_group" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

# Example virtual network
resource "azurerm_virtual_network" "example_virtual_network" {
  name                = var.virtual_network_name
  address_space       = var.virtual_network_address_space
  location            = azurerm_resource_group.example_resource_group.location
  resource_group_name = azurerm_resource_group.example_resource_group.name
}

# Example storage account
resource "azurerm_storage_account" "example_storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example_resource_group.name
  location                 = azurerm_resource_group.example_resource_group.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

# Example virtual machine
resource "azurerm_virtual_machine" "example_virtual_machine" {
  name                  = var.virtual_machine_name
  location              = azurerm_resource_group.example_resource_group.location
  resource_group_name   = azurerm_resource_group.example_resource_group.name
  vm_size               = var.virtual_machine_size
  network_interface_ids = [azurerm_network_interface.example_network_interface.id]
}

# Example network interface
resource "azurerm_network_interface" "example_network_interface" {
  name                      = var.network_interface_name
  location                  = azurerm_resource_group.example_resource_group.location
  resource_group_name       = azurerm_resource_group.example_resource_group.name
  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = azurerm_subnet.example_subnet.id
    private_ip_address_allocation = var.private_ip_address_allocation
    private_ip_address_version    = var.private_ip_address_version
  }
}

# Example subnet
resource "azurerm_subnet" "example_subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.example_resource_group.name
  virtual_network_name = azurerm_virtual_network.example_virtual_network.name
  address_prefixes     = var.subnet_address_prefixes
}

# Example security group
resource "azurerm_network_security_group" "example_security_group" {
  name                = var.security_group_name
  location            = azurerm_resource_group.example_resource_group.location
  resource_group_name = azurerm_resource_group.example_resource_group.name
}

# Example security rule
resource "azurerm_network_security_rule" "example_security_rule" {
  name                        = var.security_rule_name
  priority                    = var.security_rule_priority
  direction                   = var.security_rule_direction
  access                      = var.security_rule_access
  protocol                    = var.security_rule_protocol
  source_port_range            = var.security_rule_source_port_range
  destination_port_range       = var.security_rule_destination_port_range
  source_address_prefix        = var.security_rule_source_address_prefix
  destination_address_prefix   = var.security_rule_destination_address_prefix
  resource_group_name         = azurerm_resource_group.example_resource_group.name
  network_security_group_name = azurerm_network_security_group.example_security_group.name
}

# Example output
output "example_output" {
  value = azurerm_virtual_machine.example_virtual_machine.id
}