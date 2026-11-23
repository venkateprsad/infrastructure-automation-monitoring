output "vpc_id" {
  description = "Existing VPC ID"
  value       = data.aws_vpc.project.id
}

output "vpc_cidr" {
  description = "Existing VPC CIDR"
  value       = data.aws_vpc.project.cidr_block
}

output "subnet_id" {
  description = "Existing subnet ID"
  value       = data.aws_subnet.project.id
}

output "security_group_id" {
  description = "Existing security group ID"
  value       = data.aws_security_group.project.id
}

output "monitoring_instance" {
  value = {
    id         = data.aws_instance.monitoring.id
    private_ip = data.aws_instance.monitoring.private_ip
    type       = data.aws_instance.monitoring.instance_type
  }
}

output "app_server_1" {
  value = {
    id         = data.aws_instance.app_server_1.id
    private_ip = data.aws_instance.app_server_1.private_ip
    type       = data.aws_instance.app_server_1.instance_type
  }
}

output "app_server_2" {
  value = {
    id         = data.aws_instance.app_server_2.id
    private_ip = data.aws_instance.app_server_2.private_ip
    type       = data.aws_instance.app_server_2.instance_type
  }
}
