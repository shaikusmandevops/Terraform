variable "fruit" {
  default = "apple"
}
output "fruit" {
  value = var.fruit
}
variable "fruit_names" {
  default = ["apple","mango","apple"]
}
output "fruit_names_first" {
  value = var.fruit_names[0]
}
output "fruit_names_second" {
  value = var.fruit_names[1]
}
output "fruit_names_third" {
  value = var.fruit_names[2]
}
variable "fruit_names_with_stock" {
  default = {
    apple={
      stock=100
      price=5
    }
    banana={
      stock=200
      price=10
    }
  }
}
output "fruit_names_with_stock" {
  value = var.fruit_names_with_stock["apple"].stock
}
variable "fruits_with_price" {
  default = {
    apple=100
    banana=200
  }
}
output "fruits_with_price" {
  value = var.fruits_with_price["apple"]
}
variable "fruit_details_1" {
  default = {
    apple={
      stock=100
      breed="shimla"
      sweetness=true
    }
  }
}
output "fruit_details_1" {
  value = "fruit_stock=${var.fruit_details_1["apple"].stock}, fruit_breed=${var.fruit_details_1["apple"].breed}, fruit_sweetness="${var.fruit_details_1.sweetness}"
}