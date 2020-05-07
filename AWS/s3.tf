resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-silvia"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}