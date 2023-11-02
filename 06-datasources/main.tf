data "aws_ami_ids" "centos" {
  owners = ["967111156533"]
}
output "amis" {
  value = data.aws_ami_ids.centos
}