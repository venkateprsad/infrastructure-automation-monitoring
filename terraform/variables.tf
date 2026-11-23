variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "Existing project VPC"
  type        = string
  default     = "vpc-0ce11ae2c58dc58eb"
}

variable "subnet_id" {
  description = "Existing project subnet"
  type        = string
  default     = "subnet-0f2087cae3c949dc3"
}

variable "security_group_id" {
  description = "Existing project security group"
  type        = string
  default     = "sg-0cf595072a413cac0"
}

variable "monitoring_instance_id" {
  type    = string
  default = "i-017a7724613d690e6"
}

variable "app_server_1_instance_id" {
  type    = string
  default = "i-0bc2b77c92c3318f4"
}

variable "app_server_2_instance_id" {
  type    = string
  default = "i-0b6c7ffcffa790f5f"
}
