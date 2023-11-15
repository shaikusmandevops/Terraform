/*map of resources*/
variable "components" {
  default = {
    frontend={
      name="frontend"
    }
    mongodb={
      name="mongodb"
    }
  }
}
/*Use of for_each loop to create resources*/
resource "aws_security_group" "allow_tls" {
 for_each = var.components
  name=lookup(var.components,each.value["name"], null)
}