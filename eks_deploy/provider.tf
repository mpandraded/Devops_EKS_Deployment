terraform {
  required_providers{
    aws = {
        source = "hashicorp/aws"
        version = "4.10.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "3.3.0"
    }

  } 
   
}

provider "aws"{
  region = "eu-west-1"
  shared_credentials_files = ["~/.aws/credentials"]
  
  default_tags {
    tags = {
      Name     = "${var.resource_name}"
      Proeject = "${var.project_name}"
    }
  }
}
