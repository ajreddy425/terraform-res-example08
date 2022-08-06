output "account_id" {
  value = local.acc_id
}

output "reg_name" {
  value = local.region_name
}

output "list_of_azs" {
  value = local.x
}

output "no_of_azs" {
  value = local.l
}


output "vpc_id" {
  value = aws_vpc.demo_8am.id

}


# output "instance_id" {
#   value = aws_instance.pub_sub_1.*.id
# }

