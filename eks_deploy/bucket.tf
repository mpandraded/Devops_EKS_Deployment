/*resource "aws_s3_bucket" "terraform_state" {
  bucket = "openbanking-infrastructure-terraform-states"
     
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket" "terraform_state_bkp" {
  bucket = "openbanking-infrastructure-terraform-states-bkp"
     
  lifecycle {
    prevent_destroy = true
  }
}*/