// Creates 3 Private Subnets
resource "azurerm_subnet" "private1" { 
  name = "private1" 
  resource_group_name = "${var.resource_group_name}" 
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}" 
  address_prefix = "10.0.1.0/24" 
} 

 

resource "azurerm_subnet" "private2" { 
  name = "private2" 
  resource_group_name = "${var.resource_group_name}" 
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}" 
  address_prefix = "10.0.2.0/24" 
} 

 

resource "azurerm_subnet" "private3" { 
  name = "private3" 
  resource_group_name = "${var.resource_group_name}" 
  virtual_network_name = "${azurerm_virtual_network.vnet1.name}" 
  address_prefix = "10.0.3.0/24" 
} 