variable "components" {
  default = ["frontend","mongodb"]
}

resource "aws_instance" "web" {
  count = length(var.components)
  ami           = "ami-05a5f6298acdb05b6"
  instance_type = "t3.micro"
  vpc_security_group_ids =["sg-092c13de3c11aa37f"]

  tags = {
    Name = element(var.components, count.index)
  }
 /* resource "aws_security_group" "allow_tls" {
    //count=length(var.components)
    name   = element(var.components, count.index )

  }*/
}