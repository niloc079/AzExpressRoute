# Azure ExpressRoute Circuit
resource azurerm_express_route_circuit "express_route" {
    name                  = "${var.environment}${var.application}${var.iteration}erc"
    resource_group_name   = azurerm_resource_group.rg.name
    location              = azurerm_resource_group.rg.location
    tags                  = var.tags
    # https://docs.microsoft.com/en-us/azure/expressroute/expressroute-locations-providers
    service_provider_name = "Cologix"
    peering_location      = "Minneapolis"
    bandwidth_in_mbps     = 50

    sku {
        tier   = "Standard"  
        family = "MeteredData" 
    }
}

