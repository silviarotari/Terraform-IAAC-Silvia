terraform { 
backend "s3" { 
bucket = "silvia-terraform-eks" 
key = "application/us-east-1/state/dev/infrastructure.tfstate.json" 
region = "us-east-1" 
  } 
} 
