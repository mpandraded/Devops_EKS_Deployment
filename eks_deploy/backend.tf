terraform {
  backend "s3" {
    bucket         = "openbanking-infrastructure-terraform-states"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
  }
}