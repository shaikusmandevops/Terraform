variable "fruit_name" {
  default="apple"
}
output "fruit_name" {
  value = "var.fruit_name"
}
variable "fruits" {
  default = ["apple","mango"]
}
output "fruits_apple" {
  value = "var.fruits[0]"
}
output "fruits_mango" {
  value = "var.fruits[1]"
}
variable "fruits_stock" {
  default ={
  apple= {
      stock=100
      price=3
  }
  banana={
    stock=200
    price=4
  }
}
}
output "fruits_stocks" {
  value = var.fruits_stock["apple"].stock
}
output "fruit_namea" {
  value = "fruit_name=${var.fruit_name}"
}
# Variable Data Types
variable "fruit_details" {
  default = {
    apple = {
      stock    = 100          # number
      type     = "washington" # string
      for_sale = true         # boolean
    }
  }
}
output "fruit_details" {
  value = "fruit_stock=${var.fruit_details["apple"].stock}, fruits_type=${var.fruit_details["apple"].type}, fruits_type=${var.fruit_details["apple"].for_sale}"
}