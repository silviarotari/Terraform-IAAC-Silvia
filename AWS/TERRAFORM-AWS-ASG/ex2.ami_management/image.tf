data "aws_ami" "image" {
  most_recent = true
  owners      = ["137112412989"] # Canonical 
}

//Creates linux-amazon ec2 instance