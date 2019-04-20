resource "aws_internet_gateway" "igw1" {
    vpc_id = "${aws_vpc.dev.id}"
  tags {
    name       = "terraform-${var.created_by }-${count.index +1}"
    env        = "${var.env}"
    dept       = "${var.dept}"
    created_by = "${var.created_by}"
  }
}
