provider "azurerm" {
  features {}
  
  subscription_id = "3b1bfc9b-7c37-48b7-b852-c4208989b7d1"
  client_id       = "b3e7b1ea-6299-46b5-a755-b35935c2e50c"
  client_secret   = "mcX8mZ_e_Yk9NBz_K107hG~z3D3.-YC7S2"
  tenant_id       = "fb4ebd65-b78b-42a4-b64c-26f5692e3c7c"
}

resource "azurerm_resource_group" "rg01" {
  name     = "rgDemo01"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = "aksDemo01"
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name
  dns_prefix          = "k8sdns"
  kubernetes_version  = "1.27.7"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_D2s_v3"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = "b3e7b1ea-6299-46b5-a755-b35935c2e50c"
    client_secret = "mcX8mZ_e_Yk9NBz_K107hG~z3D3.-YC7S2"
  }

  role_based_access_control_enabled = true

  tags = {
    environment = "Demo"
  }
}
