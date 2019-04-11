resource "aws_instance" "web" {
  count = "4"
  ami = "ami-0edbcc3ba422f19d4"
  instance_type = "t2.micro"
  key_name = "${var.keypair}"
  security_groups = ["${var.security_g}"]
  subnet_id = "${var.subnet_id}"
  tags {
    Name = "seleniumhubnodes-${count.index + 1}"
  }
}
