variable "components" {
  default = ["frontend","mongodb"]
}

resource "aws_instance" "web" {
  count = length(var.components)
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids =["sg-xxxxxxxxxx"]

  tags = {
    Name = element(var.components, count.index )
  }
}