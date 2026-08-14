output "cluster_name"{
description = "The name of the eks cluster  "
value = module.eks.cluster_id
}

output "cluster_endpoint"{
    description = "The endpoint of the eks cluster"
    value = module.eks.cluster_endpoint
}

output "vpc_id"{
    description = "The vpc id of the eks cluster"
    value = module.vpc.vpc_id
}

output "private_subnets"{
    description = "The private subnets of the eks cluster"
    value = module.vpc.private_subnets
}