# Specify the provider and region
provider "aws" {
  region = "ap-south-1"
}

# Create a security group
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create an EC2 instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-0c5b9d42f5026f45d" # Example AMI, replace with a valid AMI ID
  instance_type = "t2.micro"
  key_name      = "your-ssh-key" # Replace with your SSH key name

  security_groups = [aws_security_group.allow_ssh.name]

  tags = {
    Name = "MyEC2Instance"
  }
}
