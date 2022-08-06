# resource "aws_nat_gateway" "my_ngw" {
#   allocation_id = aws_eip.eip_alloc.id
#   subnet_id     = aws_subnet.pub_sub1.id

#   tags = {
#     Name = "gw-NAT"
#   }
# }

# // eip to the nat gateway

# resource "aws_eip" "eip_alloc" {
#   vpc = true
# }