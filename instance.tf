resource "aws_instance" "web" {
  count = "2"
  ami = "ami-013e04dfa544cfe54"
  instance_type = "t2.micro"
  key_name = "${var.keypair}"
  security_groups = ["${var.security_g}"]
  subnet_id = "${var.subnet_id}"
  tags {
    Name = "Terraform-${count.index + 1}"
  }

}
