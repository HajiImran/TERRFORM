provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0327f51db613d7bd2"
instance_type = "t2.medium"
key_name = "khan"
vpc_security_group_ids = ["sg-05f044979e305302e"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
