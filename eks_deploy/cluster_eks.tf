resource "aws_eks_cluster" "axway-cluster" {
  name     = var.cluster_name
  version  = var.cluster_version
  role_arn = aws_iam_role.eks-cluster.arn

  vpc_config {
    subnet_ids = [
      data.aws_subnet.public_sub_devops1a.id,
      data.aws_subnet.public_sub_devops1b.id,
      data.aws_subnet.public_sub_devops1c.id,
      data.aws_subnet.private_sub_devops_nat1a.id,
      data.aws_subnet.private_sub_devops_nat1b.id,
      data.aws_subnet.private_sub_devops_nat1c.id
    ]
  }

  depends_on = [aws_iam_role_policy_attachment.amazon-eks-cluster-policy]
}