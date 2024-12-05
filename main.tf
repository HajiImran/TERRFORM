# Specify the provider and region
provider "aws" {
  region = "ap-south-1"
}

# Create an EC2 instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-0c5b9d42f5026f45dami-0327f51db613d7bd2 (64-bit (x86))" # Example AMI, replace with a valid AMI ID
  instance_type = "t2.micro"
  key_name      = "TIER1" # Replace with your SSH key name

  security_groups = [aws_security_group.allow_ssh.name]

  tags = {
    Name = "MyEC2Instance"
  }
}
