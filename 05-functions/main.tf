variable "fruits_in_index" {
  default = ["apple","mango"]
}
output "fruits_in_index" {
 //value = var.fruits_in_index[2]
  value=element(var.fruits_in_index, 2)
}
