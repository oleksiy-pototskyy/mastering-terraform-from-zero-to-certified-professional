variable "aws_ami" {
  description = "AWS AMI for EC2 Instances with application"
}

variable "aws_vpc_id" {
  description = "AWS VPC ID which was created for the project"
}

variable "aws_ec2_type" {
  description = "Default type of EC2 Instances for application"
  default = "t2.micro"
}

variable "aws_vpc_public_subnets" {
  description = "List of AWS VPC Public Subnets to deploy Application Load Balancer"
  type = list(string)
}

variable "aws_vpc_private_subnets" {
  description = "List of AWS VPC Public Subnets to deploy EC2 Instances with application"
  type = list(string)
}

variable "mandatory_tags" {
  type = map(string)
  description = "Mandatory TAGs for all AWS resources"
}

variable "bastion_security_group_id" {
  description = "Bastion Security Group ID"
}

variable "app_key_pair_name" {
  description = "AWS Key Pair Name"
}

variable "domain_zone_id" {
  description = "Route53 Zone ID"
}

variable "ssl_certificate_arn" {
  description = "SSL Certificate ARN"
}
