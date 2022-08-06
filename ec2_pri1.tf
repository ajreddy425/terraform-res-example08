# // FAQ 5/5

# resource "aws_instance" "pri_sub_1" {
#   ami                         = "ami-0cff7528ff583bf9a"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = false
#   subnet_id                   = aws_subnet.pri_sub1.id
#   key_name                    = "aws-8am-18jul"
#   vpc_security_group_ids      = [aws_security_group.my_sg.id]
#   user_data                   = file("./scripts/apache2.sh")

#   tags = {
#     Name = "Private-server-01"
#   }
# }