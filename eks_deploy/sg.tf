# Create Security Group

resource "aws_security_group" "ssh-security-group" {
  name        = "openbanking-axway-cluster-sg-prod"
  description = "Enable SSH access on Port 22"
  vpc_id      = data.aws_vpc.vpc_devops.id
  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] 
  }
  tags = {
    Name = "SSH Security Group"
  }
}