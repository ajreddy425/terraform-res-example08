# # Create a new load balancer
# resource "aws_elb" "my_elb" {
#   name            = "terraform-elb-7am"
#   subnets         = [aws_subnet.pub_sub1.id, aws_subnet.pri_sub1.id]
#   security_groups = [aws_security_group.my_sg.id]


#   listener {
#     instance_port     = 80
#     instance_protocol = "http"
#     lb_port           = 80
#     lb_protocol       = "http"
#   }


#   health_check {
#     healthy_threshold   = 2
#     unhealthy_threshold = 2
#     timeout             = 3
#     target              = "HTTP:80/"
#     interval            = 30
#   }

#   instances                   = [aws_instance.pub_sub_1.id, aws_instance.pri_sub_1.id]
#   cross_zone_load_balancing   = true
#   idle_timeout                = 400
#   connection_draining         = true
#   connection_draining_timeout = 400

#   tags = {
#     Name = "terraform-elb"
#   }
# }