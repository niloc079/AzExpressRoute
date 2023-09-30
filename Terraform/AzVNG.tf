# Azure Virtual Network Gateway
resource azurerm_virtual_network_gateway "virtual_network_gateway" {
    name                = "${var.environment}${var.application}${var.iteration}-vng"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    tags                = var.tags

    type     = "ExpressRoute"
    vpn_type = "PolicyBased"

    sku           = "HighPerformance"
    active_active = false
    enable_bgp    = false

    ip_configuration {
        name                          = "default"
        private_ip_address_allocation = "Dynamic"
        subnet_id                     = azurerm_subnet.gateway_subnet.id
        public_ip_address_id          = azurerm_public_ip.vnet_gateway_public_ip.id
    }
}
