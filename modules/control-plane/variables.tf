variable "cluster_name" {
  description = "The Cluster Name"
  type        = string
}

variable "cluster_role_arn" {
  description = "Cluster Role or User arn"
  type        = string
}

variable "eks_version" {
  description = "EKS Control-plane version"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet list for EKS control-plane"
  type        = list(string)
}

variable "security_groups" {
  description = "List of SG for the EKS control-plane"
  type        = list(string)
}


variable "coredns_version" {
  description = "core-dns EKS Addon version"
  type        = string
}


