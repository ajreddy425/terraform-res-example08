locals {
  acc_id      = data.aws_caller_identity.current.account_id
  region_name = data.aws_region.current1.id
  x           = data.aws_availability_zones.available.names
  ws          = terraform.workspace
  l           = length(data.aws_availability_zones.available.names)
}
