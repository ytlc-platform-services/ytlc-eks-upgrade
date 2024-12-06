resource "aws_eks_cluster" "ytlc_eks_cluster" {
  name = var.cluster_name
  role_arn = var.cluster_role_arn
  version = var.eks_version

  access_config {
    authentication_mode = "API"
  }
  
  vpc_config {
    subnet_ids = var.subnet_ids
    security_group_ids = var.security_groups
  }

}

resource "aws_eks_addon" "coredns_addons" {
  name       = var.cluster_name
  addon_name = "coredns"
  addon_version = var.coredns_version
  resolve_conflicts_on_update = "OVERWRITE"
}

resource "aws_eks_addon" "kube_proxy_addons" {
  name       = var.cluster_name
  addon_name = "kube-proxy"
  addon_version = var.kube_proxy_version
  resolve_conflicts_on_update = "OVERWRITE"
}

resource "aws_eks_addon" "vpc_cni_addons" {
  name       = var.cluster_name
  addon_name = "vpc-cni"
  addon_version = var.vpc_cni_version
  resolve_conflicts_on_update = "OVERWRITE"
}
