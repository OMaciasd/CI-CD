variable "tenant_quickcomm_id" {
  default = "b86c161e-2e38-4abe-8513-155e491fab12"
}
variable "subscription_quickcomm_id" {
  default = "586dff25-d1e8-49d3-a79d-028cc5253a36"
}

variable "tenant_nanaykuna_id" {
  default = "141d8fe2-bf63-4de7-8782-1e1b896f03c9"
}
variable "subscription_nanaykuna_id" {
  default = "443c2864-91d7-499d-877b-04179227ab3b"
}

variable "resource_group_nanaykuna_name" {
  default = "rginfradevops"
}

variable "resource_group_quickcomm_name" {
  default = "Qhatu-Nanaykuna-Dev"
}

variable "location" {
  default = "East US"
}


variable "vnet_nanaykuna_name" {
  default = "devvnetnnknpeer"
}

variable "vnet_quickcomm_name" {
  default = "devvnetqkcmpeer"
}

#variable "storage_account_name" {
#  default = "infraci"
#}
#
#variable "container_name" {
#  default = "dev-nanaykuna-storefront-infra"
#}

variable "azurerm_service_plan_nanaykuna_name" {
  default = "app-dev"
}

variable "azurerm_linux_web_app_nanaykuna_name" {
  default = "nanaykuna-poc-stock-integration"
}


variable "vnet_peer_quickcomm_name" {
  default = "devqkcmpeer"
}

variable "vnet_peer_nanaykuna_name" {
  default = "devnnknpeer"
}