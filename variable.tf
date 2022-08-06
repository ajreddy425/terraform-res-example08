variable "vpc_cidr" { // variable "variable_logical_name"{}
  description = "enter the cidr block for your vpc"
  default     = "192.168.0.0/16"
  type        = string
}


// everythig inside the variable block is optional.

# variable "vpc_name" {
#   description = "enter the name of the vpc"
#   default     = "terraform-vpc-2607"

# }

# variable "subnet_cidr" {
#   description = "enter the subnet_cidr block here"
#   default     = "172.16.0.0/24"
# }