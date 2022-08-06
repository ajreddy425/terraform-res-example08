# // FAQ 5/5

# resource "aws_instance" "pub_sub_2" {
#   ami                         = "ami-0cff7528ff583bf9a"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   subnet_id                   = aws_subnet.pub_sub2.id
#   key_name                    = "aws-8am-18jul"
#   vpc_security_group_ids      = [aws_security_group.my_sg.id]
#   user_data                   = file("./scripts/apache2.sh")

#   tags = {
#     Name = "Public-server-02"
#   }
# }


