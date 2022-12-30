/*resource "aws_eip" "axway-eip" {
  vpc = true

  tags = {
    Name = "axway-eip"
  }
}

resource "aws_nat_gateway" "axway-nat" {
  allocation_id = aws_eip.axway-eip.id
  subnet_id     = data.aws_subnet.private_sub_devops1a.id

  tags = {
    Name = "axway-nat"
  }

  depends_on = [data.aws_internet_gateway.igw]
}*/



