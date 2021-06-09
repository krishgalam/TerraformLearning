resource "azurerm_resource_group" "Test" {
  name     = var.resource-group-name
  location = var.location
}

resource "azurerm_app_service_plan" "Test" {
  name                = var.app-service-plan-name
  location            = azurerm_resource_group.Test.location
  resource_group_name = azurerm_resource_group.Test.name

  sku {
    tier = var.sku.tier
    size = var.sku.size
  }
}

resource "azurerm_app_service" "Test" {
  name                = var.app-service-name
  location            = azurerm_resource_group.Test.location
  resource_group_name = azurerm_resource_group.Test.name
  app_service_plan_id = azurerm_app_service_plan.Test.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}