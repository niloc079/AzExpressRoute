# Azure Virtual Network Gateway Connection to Express Route
resource azurerm_virtual_network_gateway_connection "virtual_network_gateway_connection" {
    name                            = "${var.environment}${var.application}${var.iteration}-vgw-con"
    location                        = azurerm_resource_group.rg.location
    resource_group_name             = azurerm_resource_group.rg.name
    tags                            = var.tags
    type                            = "ExpressRoute"
    virtual_network_gateway_id      = azurerm_virtual_network_gateway.virtual_network_gateway.id
    express_route_circuit_id        = azurerm_express_route_circuit.express_route.id
}
