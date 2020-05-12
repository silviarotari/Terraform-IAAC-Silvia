
output "ARN" {
  value = module.my-cluster.cluster_arn
}


output "ID" {
  value = module.my-cluster.cluster_id
}

output "Sec_Group" {
  value = module.my-cluster.cluster_security_group_id
}

output "REGION" {
  value = var.region 
}

output "NAME" {
  value = var.cluster_name
}



# https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/12.0.0?tab=outputs