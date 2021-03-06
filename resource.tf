# Define VPC Variable

variable "aws-vpc-cidr" {
  type    = string
  default = "172.0.0.0/16"


}

# Create VPC

resource "aws_vpc" "john_vpc" {
  cidr_block       = var.aws-vpc-cidr
  instance_tenancy = "default"
  tags = {
    Name      = "john_vpc"
    Terraform = "true"
  }

}
