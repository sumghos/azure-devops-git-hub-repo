//The resource random_pet generates random pet names that are intended to be used as unique identifiers for other resources.
resource "random_pet" "ssh_key_name" {
  prefix = "ssh"
  separator = " "
}

resource "azapi_resource_action" "ssh_public_key_gen" {
  type = "Microsoft.Compute/sshPublicKeys@2022-11-01"
  resource_id=azapi_resource.ssh_public_key.id
  action ="generateKeyPair"
  method ="POST"
  response_export_value = ["publicKey","privateKey"]

}

resource "azapi_resource" "ssh_public_key" {
  type = "Microsoft.Compute/sshPublicKeys@2022-11-01"
  name= random_pet.ssh_key_name.id
  location=var.location
  parent_id = var.azurerm_resoucegoup_id


}

output "key_data" {
  value = azapi_resource_action.ssh_public_key_gen.output.publicKey
}