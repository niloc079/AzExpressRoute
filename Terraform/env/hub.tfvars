#
#Env Variables
environment                    = "hub"         #Hub, Prd, Stg, Dev, Tst, Idp
application                    = "exr"         #net, app, ads
location                       = "centralus"   #Azure Location
iteration                      = ""            #Numeric
application_owner              = "Mark Brendanawicz"
deployment_source              = "terraform"
#
#Tags
tags =  {
environment                    = "hub"         #Hub, Prd, Stg, Dev, Tst, Idp
application                    = "exr"         #net, app, ads
location                       = "centralus"   #Azure Location
iteration                      = ""            #Numeric
application_owner              = "Mark Brendanawicz"
deployment_source              = "terraform"
        }
#Custom
peering_type                   = "AzurePrivatePeering"
primary_peer_cidr              = "10.0.0.0/30"     #ER Peer CIDR
secondary_peer_cidr            = "10.0.0.0/30"     #ER Peer CIDR
peer_asn                       = "100"
vlan_id                        = "200"

vnet_hub_cidr                  = ["172.16.0.0/16"]      #
vnet_hub_sub_1_cidr            = ["172.16.0.0/24"]      #
