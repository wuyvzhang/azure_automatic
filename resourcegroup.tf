# Create a Resource Group if it doesn’t exist
resource "azurerm_resource_group" "tfrgexample" {
  name     = "my-terraform-rg"
  location = "japaneast"
}