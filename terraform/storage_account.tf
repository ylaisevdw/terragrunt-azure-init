resource "azurerm_storage_account" "storage_tf" {
  name                     = "yo-stacc-${var.environment}-tf"
  resource_group_name      = "tf-${var.environment}"
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
