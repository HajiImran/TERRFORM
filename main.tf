provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
  count         = 5
  ami           = "ami-0327f51db613d7bd2 (64-bit (x86)) / ami-08d59e179a2b20f3d (64-bit (Arm))"
  instance_type = "t2.micro"
  key_name      = "TIER1"
  tags = {
    Name = "test-server"
  }
}
