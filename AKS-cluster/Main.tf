resource "azurerm_kubernetes_cluster" "aks" {
    for_each = var.aks_cluster
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  kubernetes_version  = each.value.kubernetes_version
  dns_prefix          = each.value.dns_prefix

  dynamic "default_node_pool" {
    for_each = each.value.default_node_pool
    content {
      name       = default_node_pool.value.name
      node_count = default_node_pool.value.node_count
      vm_size    = default_node_pool.value.vm_size
    }
  }

  identity {
    type = "SystemAssigned"
  }

  dynamic "network_profile" {
    for_each = each.value.network_profile
    content {
      network_plugin    = network_profile.value.network_plugin
      network_policy    = network_profile.value.network_policy
      load_balancer_sku = network_profile.value.load_balancer_sku
    }
  }
 
  tags = {
    environment = "Dev"
  }
}

