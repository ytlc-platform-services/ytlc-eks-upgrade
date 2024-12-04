provider "aws" {
  region = var.region
}

module "iam" {
  source = "./modules/iam"
}

module "eks_controlplane" {
  source      = "./modules/eks-controlplane"
}

module "managed_node_group" {
  source            = "./modules/self-managed-nodes"
}
