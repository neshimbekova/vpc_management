resource "aws_vpc" "dev" {
    cidr_block = "10.0.0.0/16"
    tags {
    name       = "terraform-${var.created_by }-${count.index +1}"
    env        = "${var.env}"
    dept       = "${var.dept}"
    created_by = "${var.created_by}"
  }
  
}
