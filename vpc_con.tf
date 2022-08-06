# resource "aws_vpc" "con_demo" {
#   cidr_block       = "10.0.0.0/24"
#   instance_tenancy = "default"
#   count            = terraform.workspace == "default" ? 1 : 0
#   tags ={
#     Name = "con-vpc-demo"
#   }
# }