# Terraform - AWS Infrastructure Inventory

## Overview
This Terraform configuration references existing AWS infrastructure
using Terraform data sources.

It does not create, modify, or destroy AWS resources.

## Resources inspected
- Existing AWS VPC
- Existing subnet
- Existing security group
- Monitoring EC2 instance
- Application server 1
- Application server 2

## Terraform files
- providers.tf: AWS provider configuration
- variables.tf: Infrastructure identifiers and region
- main.tf: Existing infrastructure data sources
- outputs.tf: Infrastructure information outputs

## Validation
terraform fmt -check
terraform validate
terraform plan

## Important
This is a read-only infrastructure inventory configuration.
No terraform apply is required to inspect AWS resources.
