variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "my-terraform-rg"
}

variable "location" {
  description = "Azure region where resources will be created"
  default     = "westus"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  default     = "my-vnet"
}

variable "subnet_name" {
  description = "Name of the subnet"
  default     = "my-subnet"
}

variable "nic_name" {
  description = "Name of the network interface"
  default     = "my-nic"
}

variable "vm_name" {
  description = "Name of the virtual machine"
  default     = "my-ubuntu-vm"
}

variable "admin_username" {
  description = "Admin username for the VM"
  default     = "azureuser"
}