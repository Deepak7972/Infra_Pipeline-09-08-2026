resource = {
  "rg1" = {
    name     = "rg-preprod-app-001"
    location = "eastus2"
  }
}

vnet = {
  "vnet1" = {
    name                = "vnet-preprod-app-001"
    location            = "eastus2"
    resource_group_name = "rg-preprod-app-001"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  "sub1" = {
    name                 = "snet-preprod-app-001"
    resource_group_name  = "rg-preprod-app-001"
    virtual_network_name = "vnet-preprod-app-001"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

publicip = {
  "pip1" = {
    name                = "pip-preprod-app-002"
    location            = "eastus2"
    resource_group_name = "rg-preprod-app-001"
    allocation_method   = "Static"
  }
}

vms = {
  "vm1" = {
    nic_name           = "nic-preprod-app-001"
    location           = "eastus2"
    rg_name            = "rg-preprod-app-001"
    nic_subnet_name    = "snet-preprod-app-001"
    nic_vnet_name      = "vnet-preprod-app-001"
    nic_public_ip_name = "pip-preprod-app-002"
    vm_name            = "vm-preprod-001"
    vm_size            = "Standard_DS1_v2"
    admin_username     = "azureuser"
    admin_password     = "P@ssw0rd1234!"
  }
}

key_vault = {
  "kv1" = {
    name                = "kvpreprodapp002xyz" 
    location            = "eastus2"
    resource_group_name = "rg-preprod-app-001"
    sku_name            = "standard"
  }
}
