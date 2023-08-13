variable "instance_ami" {
    type = string
    default = "ami-053b0d53c279acc90"
  
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