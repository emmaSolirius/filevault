resource "azurerm_kubernetes_cluster" "default" {
  name                = "${var.base_name}-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "${var.base_name}-k8s"
  kubernetes_version  = "1.30.6"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_D2s_v3"
    os_disk_size_gb = 128
    # zones = "None"    
  }

  service_principal {
    client_id     = var.appId
    client_secret = var.password
  }

  role_based_access_control_enabled = true
  sku_tier                          = "Free"


  tags = {
    Environment = "Development"
  }
}
