# Project variables
variable "org_id" {
  description = "GCP Organization ID"
  type        = string
}

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "billing_account" {
  description = "GCP Project Billing Account"
  type        = string
  sensitive   = true
}

variable "services" {
  type = list(string)
}

# Network variables
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "vpc-network"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "subnetwork_1"
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet"
  type        = string
  default     = "172.16.0.0/20"
}

variable "region" {
  description = "Region for the subnet"
  type        = string
  default     = "us-west1"
}

# Storage variables
variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
  default     = "bucket-1"
}
