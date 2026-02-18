
data "aws_vpc" "default" {
  default = true
}
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
}
module "test_ec2_instances" {
  source        = "../../"  # points to your module directory
  name          = var.name
  aws_region    = var.aws_region
  ami           = var.ami
  instance_type = var.instance_type
  key_name           = var.key_name

  subnet_ids         = data.aws_subnets.default.ids
  security_group_ids = [data.aws_security_group.default.id]
  # subnet_ids         = var.subnet_ids
  # security_group_ids = var.security_group_ids
#   tags = {
#     env         = 
#     servicename = "aws-ec2"
#   }
}
