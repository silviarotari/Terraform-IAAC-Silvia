#route53
resource "aws_route53_record" "www" {
  zone_id = "Z379MNJXU81VEX"
  name    = "www.silviarotari.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}
