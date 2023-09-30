# Azure Public IP Address for the VNet Gateway
resource azurerm_public_ip "vnet_gateway_public_ip" {
    name                  = "${var.environment}${var.application}${var.iteration}-vng-pip"
    resource_group_name   = azurerm_resource_group.rg.name
    location              = azurerm_resource_group.rg.location
    tags                  = var.tags
    sku                   = "Basic"
    allocation_method     = "Dynamic"
}
