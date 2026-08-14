module "eks" {
   source = "terraform-aws-modules/eks/aws"
   version = "21.0.1"
   name = "sriram-eks-cluster"
   kubernetes_version = "1.33"
   endpoint_public_access = true
   vpc_id = module.vpc.vpc_id
   subnet_ids = module.vpc.private_subnets
   eks_managed_node_groups = {
        eks-nodes = {
       desired_size = 2
       max_size     = 2
       min_size     = 2

       instance_types = ["t3.medium"]
     }
   }    
}