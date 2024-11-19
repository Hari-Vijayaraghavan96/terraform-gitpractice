provider "aws" {
  region = "ap-south-1"
}

variable "ami" {
  description = "this is ami for instance"
}

variable "instance_type" {
  description = "this is instance type"
}

variable "instance_name" {
  description = "this is instance name"
}

resource "aws_instance" "sample" {
  ami = var.ami
  instance_type = var.instance_type

  tags = {
    name = var.instance_name
  }
}