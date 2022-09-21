terraform {
    source = "git::git@github.com:sudheerduba/aws-vpc-network-terraform.git//modules/vpc?ref=v1.1.0"
}

inputs = {
    environment = "Staging"
    region_name = "us-east-2"
    public_az = ["us-east-2a", "us-east-2b"]
    private_az = ["us-east-2a", "us-east-2b"]
}