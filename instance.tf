resource "aws_instance" "app-instance" {
  ami = var.APP_INSTANCE_AMI
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = element(module.main-vpc.public_subnets, 0)

  # the security group
  vpc_security_group_ids = [aws_security_group.app-securitygroup.id]

  # the public SSH key
  key_name = "mykeypair"
  tags = {
    Name = "app-instance"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}
