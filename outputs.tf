output "ops_manager_bucket" {
  value = "${module.ops_manager.bucket}"
}

output "pas_buildpacks_bucket" {
  value = "${aws_s3_bucket.buildpacks_bucket.bucket}"
}

output "pas_droplets_bucket" {
  value = "${aws_s3_bucket.droplets_bucket.bucket}"
}

output "pas_packages_bucket" {
  value = "${aws_s3_bucket.packages_bucket.bucket}"
}

output "pas_resources_bucket" {
  value = "${aws_s3_bucket.resources_bucket.bucket}"
}

output "blobstore_kms_key_id" {
  value = "${aws_kms_key.blobstore_kms_key.key_id}"
}

output "ops_manager_public_ip" {
  value = "${module.ops_manager.public_ip}"
}

output "ops_manager_dns" {
  value = "${module.ops_manager.dns}"
}

output "optional_ops_manager_dns" {
  value = "${module.ops_manager.optional_dns}"
}


output "sys_domain" {
  value = "sys.${var.dns_suffix}"
}

output "apps_domain" {
  value = "apps.${var.dns_suffix}"
}

output "tcp_domain" {
  value = "tcp.${var.dns_suffix}"
}

output "iam_user_name" {
  value = "${aws_iam_user.iam_user.name}"
}

output "iam_user_access_key" {
  value = "${aws_iam_access_key.iam_user_access_key.id}"
}

output "iam_user_secret_access_key" {
  value = "${aws_iam_access_key.iam_user_access_key.secret}"
}

output "pas_bucket_iam_instance_profile_name" {
  value = "${aws_iam_instance_profile.pas_bucket_access.name}"
}

output "ops_manager_security_group_id" {
  value = "${module.ops_manager.security_group_id}"
}

output "vms_security_group_id" {
  value = "${aws_security_group.vms_security_group.id}"
}

output "public_subnet_ids" {
  value = ["${aws_subnet.public_subnets.*.id}"]
}

output "public_subnet_availability_zones" {
  value = ["${aws_subnet.public_subnets.*.availability_zone}"]
}

output "public_subnet_cidrs" {
  value = ["${aws_subnet.public_subnets.*.cidr_block}"]
}

output "management_subnet_ids" {
  value = ["${aws_subnet.management_subnets.*.id}"]
}

output "management_subnet_availability_zones" {
  value = ["${aws_subnet.management_subnets.*.availability_zone}"]
}

output "management_subnet_cidrs" {
  value = ["${aws_subnet.management_subnets.*.cidr_block}"]
}

output "pas_subnet_ids" {
  value = ["${aws_subnet.pas_subnets.*.id}"]
}

output "pas_subnet_availability_zones" {
  value = ["${aws_subnet.pas_subnets.*.availability_zone}"]
}

output "pas_subnet_cidrs" {
  value = ["${aws_subnet.pas_subnets.*.cidr_block}"]
}

output "services_subnet_ids" {
  value = ["${aws_subnet.services_subnets.*.id}"]
}

output "services_subnet_availability_zones" {
  value = ["${aws_subnet.services_subnets.*.availability_zone}"]
}

output "services_subnet_cidrs" {
  value = ["${aws_subnet.services_subnets.*.cidr_block}"]
}

output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}

output "ops_manager_ssh_private_key" {
  value = "${module.ops_manager.ssh_private_key}"
}

output "ops_manager_ssh_public_key_name" {
  value = "${module.ops_manager.ssh_public_key_name}"
}

output "region" {
  value = "${var.region}"
}

output "azs" {
  value = "${var.availability_zones}"
}

output "web_elb_name" {
  value = "${aws_elb.web_elb.name}"
}

output "ssh_elb_name" {
  value = "${aws_elb.ssh_elb.name}"
}

output "tcp_elb_name" {
  value = "${aws_elb.tcp_elb.name}"
}

output "dns_zone_id" {
  value = "${data.aws_route53_zone.pcf_zone.id}"
}

output "ops_manager_private_ip" {
  value = "${module.ops_manager.ops_manager_private_ip}"
}
