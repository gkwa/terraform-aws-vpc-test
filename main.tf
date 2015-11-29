provider "aws" {
  region = "${var.region}"
}

module "vpc" {
  source = "git::https://github.com/TaylorMonacelli/terraform-aws-vpc.git?ref=wip"

  name = "Default"
  region = "us-west-1"
  key_name = "taylor-terraform"
  cidr_block = "10.0.0.0/16"
  external_access_cidr_block = "0.0.0.0/0"
  private_subnet_cidr_blocks = "10.0.1.0/24,10.0.3.0/24"
  public_subnet_cidr_blocks = "10.0.0.0/24,10.0.2.0/24"
  availability_zones = "us-west-1b,us-west-1c"
  nat_ami = "ami-54ea8634"
  nat_instance_type = "t2.micro"
  bastion_ami = "ami-54ea8634"
  bastion_instance_type = "t2.micro"
}
