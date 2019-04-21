module "dbasg" {
  source = "terraform-aws-modules/autoscaling/aws"

  name = "${var.dbname}"

  # Launch configuration
  lc_name = "example-lcdb"

  image_id        = "${var.ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.allow_mysql.id}"]

  # Auto scaling group
  asg_name                    = "example-asg"
  vpc_zone_identifier         = ["${aws_subnet.dev2.id}"]
  health_check_type           = "EC2"
  min_size                    = "${var.dbmin_size}"
  max_size                    = "${var.dbmax_size}"
  desired_capacity            = "${var.dbdesired_capacity}"
  wait_for_capacity_timeout   = 0
  associate_public_ip_address = "true"
  user_data                   = "${file("userdata.sh")}"

  #   tags {
  #     name       = "terraform-${var.created_by }-${count.index +1}"
  #     env        = "${var.env}"
  #     dept       = "${var.dept}"
  #     created_by = "${var.created_by}"
  #   }
}
