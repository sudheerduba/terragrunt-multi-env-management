terraform {
  source = "git::git@github.com:sudheerduba/aws-vpc-network-terraform.git//modules?ref=v1.2.0"
}

include "remote_state" {
  path = find_in_parent_folders()
}

locals {
  region = "us-east-1"
}

inputs = {
  environment       = "Staging"
  eks_cluster_name  = "Stage-EKS-Demo"
  node_group_name   = "webapp-stage-01"
  node_role_name    = "NodeRole-stage"
  nodegroup_keypair = "webapp-stage-01-key"
  cluster_role      = "AWSEKSClusterRole-stage"
  region_name       = local.region
  vpc_cidr_block    = "10.20.0.0/16"
  public_subnets = {
    "${local.region}a" = "10.20.0.0/24"
    "${local.region}b" = "10.20.2.0/24"
  }
  private_subnets = {
    "${local.region}a" = "10.20.1.0/24"
    "${local.region}b" = "10.20.3.0/24"
  }
}