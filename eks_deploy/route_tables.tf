/*resource "aws_route_table" "private" {
  vpc_id = data.aws_vpc.vpc_devops.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.axway-nat.id
  }

  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public" {
  vpc_id = data.aws_vpc.vpc_devops.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "rtb-private-sa-east-1a" {
  subnet_id      = data.aws_subnet.private_sub_devops1a.id  
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "rtb-private-sa-east-1b" {
  subnet_id      = data.aws_subnet.private_sub_devops1b.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "rtb-private-sa-east-1c" {
  subnet_id      = data.aws_subnet.private_sub_devops1c.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "rtb-public-sa-east-1a" {
  subnet_id      = data.aws_subnet.public_sub_devops1a.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "rtb-public-sa-east-1b" {
  subnet_id      = data.aws_subnet.public_sub_devops1b.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "rtb-public-sa-east-1c" {
  subnet_id      = data.aws_subnet.public_sub_devops1c.id
  route_table_id = aws_route_table.public.id
}*/