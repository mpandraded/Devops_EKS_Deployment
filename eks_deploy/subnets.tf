

/*resource "aws_subnet" "axway-cluster-private-subnet-prod-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "192.168.7.0/28"
  availability_zone = "sa-east-1a"

  tags = {
    "Name"                                      = "axway-cluster-private-subnet-prod-1a"
    "kubernetes.io/role/internal-elb"           = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}


resource "aws_subnet" "axway-cluster-private-subnet-prod-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "192.168.7.16/28"
  availability_zone = "sa-east-1b"

  tags = {
    "Name"                                      = "axway-cluster-private-subnet-prod-1b"
    "kubernetes.io/role/internal-elb"           = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}


resource "aws_subnet" "axway-cluster-private-subnet-prod-1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "192.168.7.32/28"
  availability_zone = "sa-east-1c"

  tags = {
    "Name"                                      = "axway-cluster-private-subnet-prod-1c"
    "kubernetes.io/role/internal-elb"           = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}


resource "aws_subnet" "axway-cluster-public-subnet-prod-1a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.7.48/28"
  availability_zone       = "sa-east-1a"
  map_public_ip_on_launch = true

  tags = {
    "Name"                                      = "axway-cluster-public-subnet-prod-1a"
    "kubernetes.io/role/elb"                    = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}

resource "aws_subnet" "axway-cluster-public-subnet-prod-1b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.7.64/28"
  availability_zone       = "sa-east-1b"
  map_public_ip_on_launch = true

  tags = {
    "Name"                                      = "axway-cluster-public-subnet-prod-2b"
    "kubernetes.io/role/elb"                    = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}

resource "aws_subnet" "axway-cluster-public-subnet-prod-1c" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.7.80/28"
  availability_zone       = "sa-east-1c"
  map_public_ip_on_launch = true

  tags = {
    "Name"                                      = "axway-cluster-public-subnet-prod-2c"
    "kubernetes.io/role/elb"                    = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}*/