resource "aws_instance" "web" {
  count = "${var.instance_count}"
  ami = "ami-0edbcc3ba422f19d4"
  instance_type = "t2.micro"
  key_name = "${var.keypair}"
  security_groups = ["${var.security_g}"]
  subnet_id = "${var.subnet_id}"
  tags {
    Name = ""${var.tag_name}"-${count.index + 1}"
  }
}
