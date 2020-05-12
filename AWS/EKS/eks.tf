data "aws_eks_cluster" "cluster" { 
  name = module.my-cluster.cluster_id 
} 

 
data "aws_eks_cluster_auth" "cluster" { 
  name = module.my-cluster.cluster_id 
} 

 
provider "kubernetes" { 
  host = data.aws_eks_cluster.cluster.endpoint 
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data) 
  token = data.aws_eks_cluster_auth.cluster.token 
  load_config_file = false 
  version = "~> 1.9" 
} 

 
module "my-cluster" { 
  source = "terraform-aws-modules/eks/aws" 
  cluster_name = "my-cluster" 
  cluster_version = "1.14" 
  subnets = [
      "subnet-07f93923e4dd4c44c",
      "subnet-0bd918a8c7f0fa5c7", 
      "subnet-0a18452194a979a1b"
      ] 


  vpc_id = "vpc-06200fe3216ddcc75" 
  worker_groups = [{ 
    instance_type = "m4.large"
    asg_min_size = 3  
    asg_max_size = 48
    asg_desired_capacity = 3  
    } 
  ] 
}
