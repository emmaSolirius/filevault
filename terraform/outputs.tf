output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "container_registry_name" {
  value = azurerm_container_registry.registry.name
}

output "container_registry_login_server" {
  value = azurerm_container_registry.registry.login_server
}

output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.default.name
}
