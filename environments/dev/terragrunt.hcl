terraform {
    source = "git::git@github.com:sudheerduba/aws-vpc-network-terraform.git//modules/vpc?ref=v1.1.0"
}

include "root" {
    path = find_in_parent_folders()
}

inputs = {
    region_name = "ap-south-1"
    public_az = ["ap-south-1a", "ap-south-1b"]
    private_az = ["ap-south-1a", "ap-south-1b"]
}