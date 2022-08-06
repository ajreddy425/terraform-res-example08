# // FAQ 5/5

# resource "aws_instance" "pub_sub_1" {
#   ami                         = "ami-0cff7528ff583bf9a"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   subnet_id                   = aws_subnet.pub_sub1.id
#   key_name                    = "aws-8am-18jul"
#   count                       = 4
#   vpc_security_group_ids      = [aws_security_group.my_sg.id]
#   user_data                   = file("./scripts/apache1.sh")

#   tags = {
#     Name = "Public-server-${count.index + 1}-${local.ws}"
#   }
# }


# // creating the sg 

# resource "aws_security_group" "my_sg" {
#   name        = "allow_tls"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.demo_8am.id

#   ingress {
#     description = "ssh"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   ingress {
#     description = "http"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "all_sg_terraform"
#   }
# }