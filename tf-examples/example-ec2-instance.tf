resource "aws_instance" "example" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t2.micro"
  key_name      = "my-key"
  tags = {
    Name = "example-instance"
  }
}