# Azure Virtual Network
resource azurerm_virtual_network "virtual_network" {
    name                    = "${var.environment}${var.application}${var.iteration}-vnet"
    location                = azurerm_resource_group.rg.location
    resource_group_name     = azurerm_resource_group.rg.name
    tags                    = var.tags
    address_space           = var.vnet_hub_cidr
}

# GatewaySubnet within the Virtual Network
resource azurerm_subnet "gateway_subnet" {
    name                    = "GatewaySubnet"
    resource_group_name     = azurerm_resource_group.rg.name
    virtual_network_name    = azurerm_virtual_network.virtual_network.name
    address_prefixes        = var.vnet_hub_sub_1_cidr
}