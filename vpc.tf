// create a VPC (FAQ 5/5)

resource "aws_vpc" "demo_8am" {   // resource "resource_type" "logical_name"
  cidr_block       = var.vpc_cidr // var.variable_logical_name
  instance_tenancy = "default"

  tags = {
    Name     = "terraform-vpc-2907-${terraform.workspace}"
    Location = "Bangalore"
  }
}

// logical_names can be anything 

// logical names shoulb  be unique

// ctrl + ? to put in a commnet or uncomment


