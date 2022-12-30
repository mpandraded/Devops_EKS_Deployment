//Put the data in the values field

//Get VPC ID
data "aws_vpc" "vpc_devops" {
  filter {
    name   = "tag:Name"
    values = ["openbanking-prod-brazil-vpc"]
  }
}

//Get Subnet ID
data "aws_subnet" "public_sub_devops1a" {
  filter {
    name   = "tag:Name"
    values = ["openbanking-prod-brazil-public-subnet (10.83.10.0/24 eu-west-1a)"]
  }
}

data "aws_subnet" "public_sub_devops1b" {
  filter {
    name   = "tag:Name"
    values = ["openbanking-prod-brazil-public-subnet (10.83.11.0/24 eu-west-1b)"]
  }
}
data "aws_subnet" "public_sub_devops1c" {
  filter {
    name   = "tag:Name"
    values = ["openbanking-prod-brazil-public-subnet (10.83.12.0/24 eu-west-1c)"]
  }
}
//Get Subnet ID
/*data "aws_subnet" "private_sub_devops1a" {
  filter {
    name   = "tag:Name"
    values = ["openbanking-prod-brazil-private-subnet (10.83.20.0/24 eu-west-1a)"]
  }
}

data "aws_subnet" "private_sub_devops1b" {
  filter {
    name   = "tag:Name"
    values = ["openbanking-prod-brazil-private-subnet (10.83.21.0/24 eu-west-1b)"]
  }
}

data "aws_subnet" "private_sub_devops1c" {
  filter {
    name   = "tag:Name"
    values = ["openbanking-prod-brazil-private-subnet (10.83.22.0/24 eu-west-1c)"]
  }
}*/

data "aws_subnet" "private_sub_devops_nat1a" {
  filter {
    name   = "tag:Name"
    values = ["openbanking-prod-brazil-nat-subnet (10.83.30.0/24 eu-west-1a)"]
  }
}

data "aws_subnet" "private_sub_devops_nat1b" {
  filter {
    name   = "tag:Name"
    values = ["openbanking-prod-brazil-nat-subnet (10.83.31.0/24 eu-west-1b)"]
  }
}

data "aws_subnet" "private_sub_devops_nat1c" {
  filter {
    name   = "tag:Name"
    values = ["openbanking-prod-brazil-nat-subnet (10.83.32.0/24 eu-west-1c)"]
  }
}

data "aws_internet_gateway" "igw" {
  filter {
    name   = "tag:Name"
    values = ["openbanking-prod-brazil-internet-gateway"]
  }
}