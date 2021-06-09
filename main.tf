resource "azurerm_resource_group" "ARG" {
    name = "FirstRG"
    location = ""
    tags = {
      "Environment" = "Test"
    }
}