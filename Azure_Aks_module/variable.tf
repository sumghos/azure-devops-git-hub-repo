variable "resource_group_name" {
  type= string
  description = "This defines the name of the resource group"
}

variable "location" {
  type= string
  description = "This defines the location of the resource group and the resources"
  default = "North Europe"
}

variable "node_count" {
  type = number
  description = "This defines the number of nodes in the Aks cluster"
  default = 2
}

variable "username" {
  type = string
  description = "This defines the number of nodes in the Aks cluster"
  default = "azureadmin"
}

variable "msi_id" {
  type        = string
  description = "The Managed Service Identity ID. Set this value if you're running this example using Managed Identity as the authentication method."
  default     = null
}