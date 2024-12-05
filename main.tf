provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
  count         = 5
  ami           = "ami-0327f51db613d7bd2"
  instance_type = "t2.micro"
  key_name      = "dockerr"
  vpc_security_group_ids = ["sg-05cfa7da6d7e8def3"]
  tags = {
    Name = "test-server"
  }
}
