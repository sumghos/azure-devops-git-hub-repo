variable "resource_group_name" {
  type= string
  description = "This defines the name of the resource group"
}
variable "azurerm_resoucegoup_id" {
  type= string
  description = "This defines the name of the resource group"
}

variable "location" {
  type= string
  description = "This defines the location of the resource group and the resources"
}

variable "node_count" {
  type = number
  description = "This defines the number of nodes in the Aks cluster"
}

variable "username" {
  type = string
  description = "This defines the number of nodes in the Aks cluster"
}

variable "msi_id" {
  type        = string
  description = "The Managed Service Identity ID. Set this value if you're running this example using Managed Identity as the authentication method."
  default     = null
}