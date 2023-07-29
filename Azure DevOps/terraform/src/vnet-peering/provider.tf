
#provider to our Tenant
provider "azurerm" {
  features {}
  alias           = "nanaykuna"
  subscription_id = "443c2864-91d7-499d-877b-04179227ab3b"
  client_id       = "4e44edcc-57cf-4e6f-acbb-fd4731e01e6f"
  client_secret   = "5Y_8Q~QhOzLFDJdYPrOD0ZupOaw6pY~MEPqqMc1_"
  tenant_id       = "141d8fe2-bf63-4de7-8782-1e1b896f03c9"
}

#provider to QuickComm Tenant
provider "azurerm" {
  features {}
  alias           = "quickcomm"
  subscription_id = "586dff25-d1e8-49d3-a79d-028cc5253a36"
  client_id       = "823b66d7-bef1-4dd6-b7c9-18ee5810aa2d"
  client_secret   = "WNf8Q~vnxuHsOK_EYOdyWRL9HCXLiIUjcvfzuaPz"
  tenant_id       = "b86c161e-2e38-4abe-8513-155e491fab12"
}