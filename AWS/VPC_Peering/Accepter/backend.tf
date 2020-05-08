terraform {
  required_version = "0.11.14"

  backend "s3" {
    bucket         = "state-bucket-silvia"
    key            = "projects/us-east-1/tools/vpc-peering/terraform.tfstate"
    # dynamodb_table = "state_bucket"
    region         = "us-east-1"
  }
}