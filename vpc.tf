module "main-vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.6.0"

  name = "nodeapp-vpc"
  cidr = "10.1.0.0/16"

  azs = slice(data.aws_availability_zones.available.names, 0, 1)
  public_subnets  = ["10.1.101.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    "Name" = "nodeapp-vpc"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}
