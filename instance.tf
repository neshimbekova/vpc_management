resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  count         = "${var.count}"
  key_name      = "${var.key_name}"
  subnet_id = "${aws_subnet.dev1.id}"
  associate_public_ip_address = "true"
  vpc_security_group_ids = ["${aws_security_group.allow_tcp}"]

  tags {
    name       = "terraform-${var.created_by }-${count.index +1}"
    env        = "${var.env}"
    dept       = "${var.dept}"
    created_by = "${var.created_by}"
  }
}
