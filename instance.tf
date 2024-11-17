resource "aws_instance" "example" {
  ami           = "ami-0aebec83a182ea7ea"
  instance_type = "t2.micro"
  
  # Associate with the specified security group
  vpc_security_group_ids = ["sg-033691bf4516f6e50"]

  tags = {
    Name = "MyTerraformInstance"
  }
}