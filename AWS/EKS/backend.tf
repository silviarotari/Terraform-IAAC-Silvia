terraform {
  backend "s3" {
    bucket = "silvia-terraform-eks"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}