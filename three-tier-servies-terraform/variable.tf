
variable "var_project" {
    description = "xcvbnm,"
}

variable "region" {
    description = "It has the region of the project"
}

variable "name" {
    description = "The name of the VPC network"
}

variable "machine_type" {
    description = "The machine_type of the compute instance"
}

variable "zone" {
    description = "The zone in which the compute instance will be created"
}

variable "image" {
    description = "The image of the boot disk"
}

variable "type" {
    description = "The type of the boot disk"
}

variable "size" {
    type = number
    description = "The size of the boot disk"
}


variable "network"{
    description = "The network inside the compute instance will be created"
}

variable "subnet_cidr"{
    description = "cidr of subnet "
}