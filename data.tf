data "aws_eks_cluster" "eks_cluster" {
  name = "bootcamp-impacta"
}

data "aws_eks_cluster_auth" "eks_cluster" {
  name = "bootcamp-impacta"
}
