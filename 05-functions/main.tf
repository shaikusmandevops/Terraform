variable "fruits_in_index" {
  default = ["apple","mango"]
}
output "fruits_in_index" {
 //value = var.fruits_in_index[2]
  value=element(var.fruits_in_index, 2)
}

variable "fruits_with_try_function" {
  default = {
    apple={
      stock=100
    }
  }
}
output "fruits_with_try_function" {
  value = try(var.fruits_with_try_function["banana"],0)
}
output "fruits_with_lookup_function" {
  value = lookup(var.fruits_with_try_function["apple"], "price" , null)
}