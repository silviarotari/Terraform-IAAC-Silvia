data "aws_ami" "image" {
  most_recent = true
  owners      = ["099720109477"] # Canonical 
}

//What type of AMI 
