# resource "aws_route_table" "pri_rt" {
#   vpc_id = aws_vpc.demo_8am.id

#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.my_ngw.id
#   }


#   tags = {
#     Name = "my_pri_route_8am"
#   }
# }