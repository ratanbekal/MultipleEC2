resource "aws_instance" "web" {
  count = "3"
  ami = "ami-0481727d0e48e4da7"
  instance_type = "t2.micro"
  key_name = "${var.keypair}"
  security_groups = ["${var.security_g}"]
  subnet_id = "${var.subnet_id}"
  tags {
    Name = "Terraform-${count.index + 1}"
  }
  provisioner "local-exec" {
    inline = [
      "c:\node.bat"
    ]
      }
}
