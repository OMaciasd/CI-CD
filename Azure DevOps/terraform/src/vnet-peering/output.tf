output "rgnnkn" {
  value = data.azurerm_resource_group.rg-nnkn
}

output "rgqkcm" {
  value = data.azurerm_resource_group.rg-qkcm
}

output "serviceplan" {
  value = data.azurerm_service_plan.serviceplan
}

output "devvnetnnknpeer" {
  value = azurerm_virtual_network.dev-vnet-nnkn-peer
}

output "devvnetqkcmpeer" {
  value = azurerm_virtual_network.dev-vnet-qkcm-peer
}

output "devnnknpeer" {
  value = azurerm_virtual_network_peering.dev-nnkn-peer
}

output "devqkcmpeer" {
  value = azurerm_virtual_network_peering.dev-qkcm-peer
}