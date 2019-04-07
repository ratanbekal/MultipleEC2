resource "aws_instance" "web" {
  ami = "ami-013e04dfa544cfe54"
  instance_type = "t2.micro"
  key_name = "MyKeyPair"
  tags {
    Name = "Terraformsingle1"
  }

}