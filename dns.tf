data "aws_route53_zone" "pcf_zone" {
	name = "<your main domain>.com."
}

data "aws_acm_certificate" "cert" {
	domain = "*.<your main domain>.com"
	types = ["AMAZON_ISSUED"]
}


resource "aws_route53_record" "wildcard_sys_dns" {
  zone_id = "${data.aws_route53_zone.pcf_zone.id}"
  name    = "*.sys.${var.dns_suffix}"
  type    = "CNAME"
  ttl     = 300

  records = ["${aws_elb.web_elb.dns_name}"]
}

resource "aws_route53_record" "wildcard_apps_dns" {
  zone_id = "${data.aws_route53_zone.pcf_zone.id}"
  name    = "*.apps.${var.dns_suffix}"
  type    = "CNAME"
  ttl     = 300

  records = ["${aws_elb.web_elb.dns_name}"]
}

resource "aws_route53_record" "ssh" {
  zone_id = "${data.aws_route53_zone.pcf_zone.id}"
  name    = "ssh.sys.${var.dns_suffix}"
  type    = "CNAME"
  ttl     = 300

  records = ["${aws_elb.ssh_elb.dns_name}"]
}

resource "aws_route53_record" "tcp" {
  zone_id = "${data.aws_route53_zone.pcf_zone.id}"
  name    = "tcp.${var.dns_suffix}"
  type    = "CNAME"
  ttl     = 300

  records = ["${aws_elb.tcp_elb.dns_name}"]
}

#resource "aws_route53_record" "wildcard_iso_dns" {
#  zone_id = "${data.aws_route53_zone.pcf_zone.id}"
#  name    = "*.iso.${var.dns_suffix}"
#  type    = "CNAME"
#  ttl     = 300
#  count   = "${min(var.create_isoseg_resources,1)}"

#  records = ["${aws_elb.isoseg.dns_name}"]
#}
