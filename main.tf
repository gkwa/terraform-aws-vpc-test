provider "aws" {
  alias = "west1"
  region = "${var.region}"
}

module "vpc1" {
  source = "github.com/terraform-community-modules/tf_aws_vpc"

  name = "my-vpc1"

  cidr = "10.0.0.0/16"
  private_subnets = "10.0.1.0/24,10.0.2.0/24,10.0.3.0/24"
  public_subnets  = "10.0.101.0/24,10.0.102.0/24,10.0.103.0/24"

  azs = "us-west-1b,us-west-1c"
}
