module "wordpress-virginia" {
  source           = "./module"
  region           = "us-east-1"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-ohio" {
  source           = "./module"
  region           = "us-east-2"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

# module "california" {              //us-west-1 only has 2 AZs
#   source = "./module"
#   region = "us-west-1"               
# }

module "wordpress-oregon" {
  source           = "./module"
  region           = "us-west-2"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}


# module "cape-town" {          //doesn't accept 137112412989 ami
#   source = "./module"
#   region = "af-south-1"
# }

# module "hong-kong" {          //doesn't accept 137112412989 ami
#   source = "./module"
#   region = "ap-east-1"
# }

# module "mumbai" {
#   source = "./module"
#   region = "ap-south-1"
# }

# module "seoul" {
#   source = "./module"
#   region = "ap-northeast-2"
# }

# module "singapore" {
#   source = "./module"
#   region = "ap-southeast-1"
# }

# module "sydney" {
#   source = "./module"
#   region = "ap-southeast-2"
# }

# module "tokyo" {
#   source = "./module"
#   region = "ap-northeast-1"         //Tokyo has 3 AZs but the order is a, c, d
# }

# module "canada" { 
#   source = "./module"
#   region = "ca-central-1"            //Canada has 3 AZs but the order is a, b, d
# }

# module "frankfurt" {
#   source = "./module"
#   region = "eu-central-1"
# }

# module "ireland" {
#   source = "./module"
#   region = "eu-west-1"
# }

# module "london" {
#   source      = "./module"
#   region      = "eu-west-2"
#   image_owner = "137112412989"
# }

# module "london" {
#   source = "./module"
#   region = "eu-west-2"
# }


# module "milan" {                 //doesn't accept 137112412989 ami
#   source = "./module"
#   region = "eu-south-1"
# }


# module "paris" {
#   source = "./module"
#   region = "eu-west-3"          //requested configuration is currently not supported
# }


# module "stockholm" {
#   source = "./module"
#   region = "eu-north-1"        //requested configuration is currently not supported
# }


# module "bahrain" {             //doesn't accept 137112412989 ami
#   source = "./module"
#   region = "me-south-1"
# }


# module "sao-paulo" {
#   source = "./module"
#   region = "sa-east-1"
# }

