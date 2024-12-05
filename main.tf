provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
  count         = 5
  ami           = "ami-0327f51db613d7bd2"
  instance_type = "t2.micro"
  key_name      = "T1ER1"
  tags = {
    Name = "test-server"
  }
}
