resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  count         = "${var.count}"
  key_name      = "${var.key_name}"

  tags {
    name       = "terraform-${var.created_by }-${count.index +1}"
    env        = "${var.env}"
    dept       = "${var.dept}"
    created_by = "${var.created_by}"
  }
}
