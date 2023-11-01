resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids =["sg-xxxxxxxxxx"]
  tags = {
    Name = "HelloWorld"
  }
}