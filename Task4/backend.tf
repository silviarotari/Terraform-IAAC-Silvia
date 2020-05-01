terraform {
  backend "s3" {
    bucket = "terraform-us-silvia"
    key    = "aws/iam/iam_state"
    region = "us-east-1"
  }
}