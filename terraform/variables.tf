variable "region" {
	description = " it will define the AWS region "
	default = "ap-south-1"
}
variable "server_port" {
	description = " http service listen on ths port "
	default = "80"
}

variable "instance_count" {
        description = " Instance count pass to variable "
        default = "3"
}
variable "ssh_port" {
	description = "ssh request to server  "
	default = "22"
}
variable "instance_type" { 
	description = "AWS ec2 instance type"
	default="t2.micro"
}
variable "my_public_ip" {
	description = "My local system public IP ..." 
        default = "0.0.0.0/0"
}
variable "ami" {
description = "amazon machine image"
default = "ami-0b44050b2d893d5f7"
}

variable "azs" {
default = [ "ap-south-1a", "ap-south-1b"]
}
