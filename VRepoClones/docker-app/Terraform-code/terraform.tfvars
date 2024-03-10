# Genral Values
tag_env = "dev"
rg_name = "rg01"

# Vnet Values
virtual_network_name = "vnet02"
create_Vnet = true
#address_space = [ "10.10.0.0/16" ]

# Subnet Values
subnet_cidrs = ["10.10.1.0/24", "10.10.2.0/24"]
subnet_name = ["sub01", "sub02"]
subnet_type = "public"

instance_count = 1
vm_name = "p1-VM"
os_disk_name = "os_disk"
vm_size = "Standard_DS1_v2"

name_nsg = "nsg001"

standard_tags = {
    stnd_tag = {
        Env   = "Dev"
        Owner = "V"
        Project = "p1"
        Location = "East us"
    }
}


nsgrules = [
  {
  name                       = "AllowWebIn"
  priority                   = 100
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "80"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
  },
  {
  name                       = "AllowSSHIn"
  priority                   = 110
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "22"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
  },
  {
  name                       = "Allow8080In"
  priority                   = 120
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "8080"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
  }
]


#Values for Azure pipeline
organization = "Vishwa1700220413334"
project = "cts-p2"
AZP_TOKEN = "f4ioen44sdsggxdac75sf6dc4swpyzdjtyuhz35kbys6np2ne27a"
AZP_POOL = "UAT"
agent-url = "https://vstsagentpackage.azureedge.net/agent/3.232.3/vsts-agent-linux-x64-3.232.3.tar.gz"
AZP_URL = "https://dev.azure.com/Vishwa1700220413334"
AZP_AGENT_NAME = "Agent-3"
