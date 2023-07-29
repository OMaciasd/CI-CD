# Reference to an existing Azure Resource Group
data "azurerm_resource_group" "rg-nnkn" {
  provider            = azurerm.nanaykuna
  name = var.resource_group_nanaykuna_name
}

# Reference to an existing Azure Resource Group
data "azurerm_resource_group" "rg-qkcm" {
  provider            = azurerm.quickcomm
  name = var.resource_group_quickcomm_name
}


# Reference to an existing Azure App Service Plan
data "azurerm_service_plan" "serviceplan" {
  provider            = azurerm.nanaykuna
  name                = var.azurerm_service_plan_nanaykuna_name
  resource_group_name = data.azurerm_resource_group.rg-nnkn.name
}


resource "azurerm_virtual_network" "dev-vnet-nnkn-peer" {
  provider            = azurerm.nanaykuna
  name                = var.vnet_nanaykuna_name
  resource_group_name = data.azurerm_resource_group.rg-nnkn.name
  address_space       = ["10.0.1.0/24"]
  location            = var.location
}

resource "azurerm_virtual_network" "dev-vnet-qkcm-peer" {
  provider            = azurerm.quickcomm
  name                = var.vnet_quickcomm_name
  resource_group_name = data.azurerm_resource_group.rg-qkcm.name
  address_space       = ["10.0.2.0/24"]
  location            = var.location
}

resource "azurerm_virtual_network_peering" "dev-nnkn-peer" {
  provider            = azurerm.nanaykuna
  name                      = var.vnet_peer_nanaykuna_name
  resource_group_name       = data.azurerm_resource_group.rg-nnkn.name
  virtual_network_name      = azurerm_virtual_network.dev-vnet-nnkn-peer.name
  remote_virtual_network_id = azurerm_virtual_network.dev-vnet-qkcm-peer.id
}

resource "azurerm_virtual_network_peering" "dev-qkcm-peer" {
  provider            = azurerm.quickcomm
  name                      = var.vnet_peer_quickcomm_name
  resource_group_name       = data.azurerm_resource_group.rg-qkcm.name
  virtual_network_name      = azurerm_virtual_network.dev-vnet-qkcm-peer.name
  remote_virtual_network_id = azurerm_virtual_network.dev-vnet-nnkn-peer.id
}