#
#Tags
variable "environment" {
  type = string
}

variable "application" {
  type = string
}

variable "location" {
  type = string
}

variable "iteration" {
  type = string
}

variable "application_owner" {
  type = string
}

variable "deployment_source" {
  type = string
}

variable "tags" {
  type = map
}

#Custom
variable "peering_type" {
  type = string
}

variable "primary_peer_cidr" {
  type = string
}

variable "secondary_peer_cidr" {
  type = string
}

variable "peer_asn" {
  type = string
}

variable "vlan_id" {
  type = string
}

variable "vnet_hub_cidr" {
  type = list(string)
}

variable "vnet_hub_sub_1_cidr" {
  type = list(string)
}