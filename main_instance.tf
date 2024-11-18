provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "https://github.com/Hari-Vijayaraghavan96/terraform-gitpractice/tree/master/modules/ec2_instance"
  ami_value = "ami-0dee22c13ea7a9a67"
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-06897eb5e20a79524"
  security_groups_value = ["sg-033691bf4516f6e50"]
}