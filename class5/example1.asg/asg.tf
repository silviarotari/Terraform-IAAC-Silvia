//AMI with specific configuration in it

resource "aws_launch_configuration" "as_conf" { #can't be edited,only copy or delete
  name          = "web_config"
  image_id      = "${data.aws_ami.image.id}"
  instance_type = "t2.micro"
}


//Creates ASG
resource "aws_autoscaling_group" "bar" {
  name                 = "terraform-asg-example"
  launch_configuration = "${aws_launch_configuration.as_conf.name}"

  availability_zones = [     #AZ or Subnets
    "us-east-1a",
    "us-east-1b",
    "us-east-1c",
  ]

  min_size = 1
  max_size = 2

  lifecycle {                #Blue-Green Deployment - NO DOWNTIME
    create_before_destroy = true
  }
}

//Terraform does 2 differnt ways:
# - delete than create
# - create than delete

#termination policies