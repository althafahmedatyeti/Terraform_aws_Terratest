variable "name" {
  type        = string
  description = "Name prefix for EC2 instances"
}

variable "ami" {
  type        = string
  description = "AMI ID for EC2 instances"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

 variable "key_name" {
   type        = string
   description = "Key pair name for EC2"
default     = "my-default-key"
 }

# variable "subnet_ids" {
#   type        = list(string)
#   description = "List of subnet IDs to launch EC2 in"
# }

# variable "security_group_ids" {
#   type        = list(string)
#   description = "List of security group IDs to attach"
# }

variable "associate_public_ip" {
  type        = bool
  default     = true
  description = "Whether to assign public IP"
}

variable "environment" {
  type        = string
  default     = "dev"
}
variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources"
}
variable "run_env" {
  type        = string
  description = "Environment name/prefix (e.g., dev, prod)."
  default = "dev"
}

variable "service_name" {
  type        = string
  description = "Service name used for naming/tagging."
  default = "aws-ec2"
}
