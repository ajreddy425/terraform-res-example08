
// cls is to clear the command prompt

resource "aws_subnet" "pub_sub1" {
  cidr_block        = cidrsubnet(var.vpc_cidr, 6, count.index)
  count             = local.l
  vpc_id            = aws_vpc.demo_8am.id
  availability_zone = local.x[count.index]
  tags = {
    Name = "Public-subnet-${terraform.workspace}-${count.index + 1}"
  }

}


resource "aws_subnet" "pri_sub1" {
  cidr_block        = cidrsubnet(var.vpc_cidr, 6, count.index + local.l)
  count             = local.l
  vpc_id            = aws_vpc.demo_8am.id
  availability_zone = local.x[count.index]
  tags = {
    Name = "Private-subnet-${terraform.workspace}-${count.index + 1}"
  }

}


