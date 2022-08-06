resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.demo_8am.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }


  tags = {
    Name = "pub_rt_9am"
  }
}