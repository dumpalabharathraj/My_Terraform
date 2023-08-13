module "vpc" {
    source = "./modules/aws_vpc"
    vpc_cidr = var.vpc_cidr
    vpc_tag = var.vpc_tag  
}

module "subnet" {
    source = "./modules/aws_subnet"
    vpc_id = module.vpc.vpc_id
    subnet_cidr = var.subnet_cidr
    subnet_name = var.subnet_name  
}

module "sg" {
    source = "./modules/aws_security_group"
    vpc_id = module.vpc.vpc_id
    sg_name = var.sg_name  
}

module "nic" {
    source = "./modules/aws_nic"
    subnet_id = module.subnet.subnet_id
    private_ips = var.private_ips
    nic_name = var.nic_name  
}

module "instance" {
    source = "./modules/aws_instance"
    instance_ami = var.instance_ami
    instance_type = var.instance_type
    nic_id = module.nic.nic_id
    Instance_Name = var.Instance_Name
  
}