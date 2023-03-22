# configure aws provider 
provider "aws" {
  region = "us-east-1"
  profile = "Terraform-user"
}

# Store the terrform file in the s3 
terraform {
  backend "s3" {
    bucket = "mbore-bucket12"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "Terraform-user"

  }
}
