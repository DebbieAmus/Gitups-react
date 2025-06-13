module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "gitops-cluster"
  cluster_version = "1.27"
  subnets         = ["subnet-xyz", "subnet-abc"]  # Replace with real ones
  vpc_id          = "vpc-xxxxxxx"

  node_groups = {
    default = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t3.medium"
    }
  }
}

