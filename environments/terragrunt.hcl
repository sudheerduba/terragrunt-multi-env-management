generate "backend" {
    path = "s3-backend.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
terraform {
    backend "s3" {
        bucket  = "terraform-statefiles-aws-vpc"
        key     = "${path_relative_to_include()}/terraform.tfstate"
        region  = "us-east-1"
        encrypt = true
    }
}
EOF
}