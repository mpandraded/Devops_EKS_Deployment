resource "aws_eks_node_group" "private-nodes" {
  cluster_name    = aws_eks_cluster.axway-cluster.name
  version         = var.cluster_version
  node_group_name = "axway-nodes"
  node_role_arn   = aws_iam_role.nodes.arn

  subnet_ids = [
      data.aws_subnet.public_sub_devops1a.id,
      data.aws_subnet.public_sub_devops1b.id,
      data.aws_subnet.public_sub_devops1c.id,
      data.aws_subnet.private_sub_devops_nat1a.id,
      data.aws_subnet.private_sub_devops_nat1b.id,
      data.aws_subnet.private_sub_devops_nat1c.id
    
  ]

  capacity_type  = "ON_DEMAND"
  instance_types = ["m5.xlarge"]

  scaling_config {
    desired_size = 3
    max_size     = 5
    min_size     = 0
  }

  update_config {
    max_unavailable = 1
  }

  labels = {
    role = "general"
  }

  depends_on = [
    aws_iam_role_policy_attachment.amazon-eks-worker-node-policy,
    aws_iam_role_policy_attachment.amazon-eks-cni-policy,
    aws_iam_role_policy_attachment.amazon-ec2-container-registry-read-only,
  ]

  # Allow external changes without Terraform plan difference
  lifecycle {
    ignore_changes = [scaling_config[0].desired_size]
  }
}