variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "region" {
  description = "AWS region for the resources"
  type        = string
}

variable "worker_ami_id" {
  description = "Optimized EKS Worker Node AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
  default     = "r5.large"
}

variable "subnet_ids" {
  description = "list of subnets attached to the VPC"
  type        = list(string)
}

variable "worker_count" {
  description = "Number of worker nodes to provision"
  type        = number
  default     = 1
}

variable "key_name" {
  description = "Name of the keypair to attached with the EC2"
  type        = string
}

variable "cluster_ca" {
  description = "Certificate authority for EKS cluster, can get this from old worker node user-data"
  type        = string
}

variable "api_server_url" {
  description = "EKS Control Plane API URL"
  type        = string
}

variable "volume_size" {
  description = "Root volume size for worker node"
  type        = number
  default     = 50
}

variable "tags" {
  description = "Common tags for resources"
  type        = map(string)
  default     = {}
}

variable "worker_security_group_id" {
  description = "Security Group ID for worker nodes"
  type        = list(string)
}

variable "iam_instance_profile" {
  description = "iam instance profile name"
  type        = string
}
