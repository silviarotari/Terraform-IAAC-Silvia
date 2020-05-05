module "app1" { 
source = "./module" 
region = "us-east-1" 
} 


module "wordpress" { 
source = "./module" 
region = "eu-west-2" 
} 

module "test" { 
source = "./module" 
region = "eu-central-1" 
} 


module "practice" { 
source = "./module" 
region = "ca-central-1" 
} 