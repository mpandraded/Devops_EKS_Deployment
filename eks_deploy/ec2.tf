/*resource "aws_instance" "axway-ec2" {
  ami                         = var.amiID  
  instance_type               = var.instance_type
  key_name                    = var.key_name
  security_groups             = ["${aws_security_group.ssh-security-group.id}"]
  subnet_id                   =  data.aws_subnet.public_sub_devops1a.id
  associate_public_ip_address = true
  #user_data                   = "${data.template_file.provision.rendered}"
  #iam_instance_profile = "${aws_iam_instance_profile.some_profile.id}"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    "Name" = format("BASTION-%s",var.cluster_name)
  }

  # Copies the ssh key file to home dir

  provisioner "file" {
    source      = "./${var.key_name}.pem"
    destination = "/home/ec2-user/${var.key_name}.pem"
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("${var.key_name}.pem")
      host        = self.public_ip
    }
  }
  //chmod key 400 on EC2 instance
  provisioner "remote-exec" {
    inline = ["chmod 400 ~/${var.key_name}.pem"]
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("${var.key_name}.pem")
      host        = self.public_ip
    }
  }
}


#Create a new EC2 launch configuration
resource "aws_instance" "ec2_cassandra1" {
  #name_prefix                = "terraform-example-web-instance"
  ami                         = var.amiID
  instance_type               = var.instance_type
  key_name                    = var.key_name
  security_groups             = ["${aws_security_group.ssh-security-group.id}"]
  subnet_id                   = data.aws_subnet.private_sub_devops1a.id
  associate_public_ip_address = false
  #user_data                   = "${data.template_file.provision.rendered}"
  #iam_instance_profile = "${aws_iam_instance_profile.some_profile.id}"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    "Name" = format("s%-cassandra1",var.cluster_name)
  }
}

#Create a new EC2 launch configuration
resource "aws_instance" "ec2_cassandra2" {
  #name_prefix                = "terraform-example-web-instance"
  ami                         = var.amiID
  instance_type               = var.instance_type
  key_name                    = var.key_name
  security_groups             = ["${aws_security_group.ssh-security-group.id}"]
  subnet_id                   = data.aws_subnet.private_sub_devops1a.id
  associate_public_ip_address = false
  #user_data                   = "${data.template_file.provision.rendered}"
  #iam_instance_profile = "${aws_iam_instance_profile.some_profile.id}"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    "Name" =  format("s%-cassandra1",var.cluster_name)

  }
}

#Create a new EC2 launch configuration
resource "aws_instance" "ec2_cassandra3" {
  #name_prefix                = "terraform-example-web-instance"
  ami                         = var.amiID
  instance_type               = var.instance_type
  key_name                    = var.key_name
  security_groups             = ["${aws_security_group.ssh-security-group.id}"]
  subnet_id                   = data.aws_subnet.private_sub_devops1a.id
  associate_public_ip_address = false
  #user_data                   = "${data.template_file.provision.rendered}"
  #iam_instance_profile = "${aws_iam_instance_profile.some_profile.id}"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    "Name" = format("s%-cassandra1",var.cluster_name)
  }
}*/