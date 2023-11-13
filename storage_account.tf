resource "azurerm_resource_group" "resource_group" {
  name     = "rg-terraform-state"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "joaocarlosterraformstate"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true
  }



  tags = local.common_tags


}

resource "azurerm_storage_container" "example" {
  name                  = "terraform-remote-state"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}
