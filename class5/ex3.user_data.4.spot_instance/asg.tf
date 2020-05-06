resource "aws_launch_configuration" "as_conf" { 
name = "web_config" 
image_id = "${data.aws_ami.image.id}" 
instance_type = "t2.micro" 
user_data = "${file("wordpress.sh")}" 
spot_price = "0.1"
} 


//Creates ASG 
#scale in
#scale out
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