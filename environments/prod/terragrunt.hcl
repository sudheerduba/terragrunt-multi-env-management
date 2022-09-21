terraform {
    source = "git::git@github.com:sudheerduba/aws-vpc-network-terraform.git//modules/vpc?ref=v1.1.0"
}

inputs = {
    environment = "Production"
    region_name = "us-east-1"
    public_az = ["us-east-1a", "us-east-1b"]
    private_az = ["us-east-1a", "us-east-1b"]
}