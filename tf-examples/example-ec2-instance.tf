provider "aws" {
  region = "us-east-2" # Specify your AWS region here
}

resource "aws_instance" "my_ec2_instance" {
  instance_type = "t2.micro"
  ami           = "ami-0862be96e41dcbf74"
  key_name      = "ubuntu"

  tags = {
    Name = "MyEC2Instance"
  }
}
