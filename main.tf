module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"  
  name = var.name
  ami           = var.ami
  instance_type = var.instance_type 
  subnet_id     = var.subnet_ids[0]
  key_name      = var.key_name
  vpc_security_group_ids = var.security_group_ids
  spot_block_duration_minutes = null
#   tags = {
#     env         = var.run_env
#     servicename = var.service_name
#   }
}