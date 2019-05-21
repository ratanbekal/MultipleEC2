variable "security_g" {
   default = "sg-0c37c2b0c2eb0a565"}

variable "keypair" {
   default = "Green_Berets_KeyPair"}

variable "vpc_security_group_id" {
   default = "vpc-e57f118d"
   }

variable "subnet_id" {
   default = "subnet-4e71ed26"
   }

variable "instance_count" {}

variable "tag_name" {
   default = "web-server-"
   }
