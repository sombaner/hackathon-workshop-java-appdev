# outputs.tf

# Define your output values here
output "resource_id" {
  value = azurerm_resource_group.example.id
}

output "connection_string" {
  value = azurerm_sql_server.example.connection_strings[0]
}

# Add more output values as needed