# Reference existing AWS infrastructure.
# These data sources do not create or modify resources.

data "aws_vpc" "project" {
  id = var.vpc_id
}

data "aws_subnet" "project" {
  id = var.subnet_id
}

data "aws_security_group" "project" {
  id = var.security_group_id
}

data "aws_instance" "monitoring" {
  instance_id = var.monitoring_instance_id
}

data "aws_instance" "app_server_1" {
  instance_id = var.app_server_1_instance_id
}

data "aws_instance" "app_server_2" {
  instance_id = var.app_server_2_instance_id
}
