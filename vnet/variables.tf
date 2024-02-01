variable "resource_group_name" {
    type = string
}

variable "vnet_name" {
    type = string
}

variable "subnet_name" {
    type = string  
}

variable "location" {
    type = string
    default = "UK South"
}

variable "address_prefix" {
    type = string  
}