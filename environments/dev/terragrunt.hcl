terraform {
    source = "git::git@github.com:sudheerduba/aws-vpc-network-terraform.git//modules/vpc?ref=v1.1.0"
}

inputs = {
    region_name = "ap-south-1"
    public_az = ["ap-south-1a", "ap-south-1b"]
    private_az = ["ap-south-1a", "ap-south-1b"]
}