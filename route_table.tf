resource "aws_route_table" "rtv1" {
  vpc_id = "${aws_vpc.dev.id}"

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = "${aws_internet_gateway.igw1.id}"
      
  }  
      tags {
    name       = "terraform-${var.created_by }-${count.index +1}"
    env        = "${var.env}"
    dept       = "${var.dept}"
    created_by = "${var.created_by}"
  }
}
