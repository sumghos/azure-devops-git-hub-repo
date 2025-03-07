module "resource-group" {
  source = "./modules/general/resourcegroup"
  resource_group_name = var.resource_group_name
  location = var.location
}

module "aks_cluster" {
  source = "./modules/aks_cluster"
  resource_group_name = var.resource_group_name
  location = var.location
  node_count = var.node_count
  username = var.username
  azurerm_resoucegoup_id = module.resource-group.azurerm_resoucegoup_id
}