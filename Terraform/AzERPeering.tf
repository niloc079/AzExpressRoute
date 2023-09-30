# Azure ExpressRoute Private Peering
resource azurerm_express_route_circuit_peering "express_route_peering" {
    resource_group_name           = azurerm_resource_group.rg.name
    express_route_circuit_name    = azurerm_express_route_circuit.express_route.name
    primary_peer_address_prefix   = var.primary_peer_cidr
    secondary_peer_address_prefix = var.secondary_peer_cidr
    peering_type                  = var.peering_type
    peer_asn                      = var.peer_asn
    vlan_id                       = var.vlan_id
}