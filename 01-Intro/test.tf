output "test"{
  value="usman"
}
resource "aws_instance" "instance" {
  ami = "saidhba"
}
variable "usman" {
  default = "tcs"
}
variable "fruit_name"{
  default = ["apple","banana"]
}
output "fruits" {
  value = var.fruit_name[0]
}
variable "fruits_with_stock"{
  value={
    apple=100
    banana=200
  }
}
 output "fruits_with_stock_apple" {
   value = var.fruits_with_stock[apple]
 }
variable "fruit_with_stock_price"{
  default = {
    apple = {
      stock = 100
      price = 200
    }
  }
}
output "fruit_with_stock_price_apple" {
  value = var.fruit_with_stock_price[apple].price
}

output "fruitsof" {
  value = element(var.fruit_name, 1)
}
output "fruit_with_stocks" {
  value = try(var.fruit_with_stock_price[apple].price, 0)
}
output "fruit_with_real_stocks" {
  value = lookup(var.fruit_with_stock_price[apple],"price", 0 )
}
variable "components" {
  default = ["apple", "banana","orange"]
}
output "components_values" {
  count=length(var.components)
  value=element(var.components,count.index )
}



variable "componentss" {
  default = {
    frontend  = { name = "frontend_sg" }
    catalogue = { name = "catalogue_sg" }
    mongodb   = { name = "mongodb_sg" }
  }

}
output "for_each" {
  for_each=var.componentss
  value=lookup(var.components,each.value["name"], null)
}
output "a"
for_each=var.componentss
value=lookup(var.components,each.value["name"], null)
count=length(var.components)
try_function=try(var.components[0], 0)
element_function=element(var.fruit_with_stock_price[apple].stock, null)
}