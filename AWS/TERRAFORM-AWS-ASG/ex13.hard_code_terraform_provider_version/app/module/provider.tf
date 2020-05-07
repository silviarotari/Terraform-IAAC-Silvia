provider "aws" {
  region = "${var.region}"
  version = "2.59"
}

//Add terraform version 
terraform { 
required_version = "0.11.14" 


variable "region" {}

}

 