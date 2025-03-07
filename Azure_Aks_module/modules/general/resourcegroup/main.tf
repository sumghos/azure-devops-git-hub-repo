resource "azurerm_resource_group" "aks_cluster" {
  location = var.location
  name = var.resource_group_name
}