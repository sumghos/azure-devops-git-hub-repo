resource "random_pet" "azurerm_kubernetes_cluster_name" {
  prefix = "cluster"
}
resource "random_pet" "azurerm_kubernetes_cluster_dns_prefix" {
  prefix = "dns"
}

resource "azurerm_kubernetes_cluster" "k8s_cluster" {
  dns_prefix = random_pet.azurerm_kubernetes_cluster_dns_prefix.id
  location = var.location
  name = random_pet.azurerm_kubernetes_cluster_name.id
  resource_group_name = var.resource_group_name
  identity {
    type = "SystemAssigned"
  }
  default_node_pool {
    name = "agentpool"
    vm_size = "Standard_D2_v2"
    node_count = var.node_count
  }
  linux_profile {
    admin_username = var.username
    ssh_key {
      key_data = azapi_resource_action.ssh_public_key_gen.output.publicKey
    }
  }
  network_profile {
    network_plugin = "kubenet"
    load_balancer_sku = "standard"
  }
}