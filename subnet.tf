resource "aws_subnet" "dev1" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "10.0.1.0/24"

tags {
    name       = "terraform-${var.created_by }-${count.index +1}"
    env        = "${var.env}"
    dept       = "${var.dept}"
    created_by = "${var.created_by}"
  }
}
resource "aws_subnet" "dev1" {
  vpc_id = "${aws_vpc.dev.id}"
  cidr_block = "10.0.2.0/24"
tags {
    name       = "terraform-${var.created_by }-${count.index +1}"
    env        = "${var.env}"
    dept       = "${var.dept}"
    created_by = "${var.created_by}"
}

}

