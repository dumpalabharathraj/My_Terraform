############ VPC ##############################
variable "vpc_cidr" {
    type = string
    default = "172.16.0.0/16"
  
}

variable "vpc_tag" {
    type = map(any)
    default = {
        "Name" = "tf-example"
    }
  
}
############ SUBNET ##########################
variable "vpc_id" {
    type = string  
}

variable "subnet_cidr" {
    type = string
    default = "172.16.10.0/24"  
}

variable "subent_name" {
    type = map(any)
    default = {
      "Name" = "my_subnet"
    }
} 
############ SECURITY GROUP ###################
variable "vpc_id" {
    type = string
  
}

variable "sg_name" {
    type = map(any)
    default = {
      "Name" = "allow_tls"
    }
  
}
########### NIC ###############################
variable "subnet_id" { 
    type = string
}

variable "private_ips" {
    type = list(string)
    default = [ "172.16.10.100" ]
  
}

variable "nic_name" {
  type = map(any)
  default = {
    "Name" = "primary_network_interface"
  }
}
############ INSTANCE ##########################
variable "instance_ami" {
    type = string
    default = "ami-0ac019f4fcb7cb7e6"
  
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "nic_id" {
    type = string
  
}

variable "Instance_Name" {
    type = map(any)
    default = {
      "Name" = "PROD-SERVER"
    }
  
}