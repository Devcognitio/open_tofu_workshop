variable "private_subnets" {
  description = "Lista de subnets privadas en las que se desplegarán las instancias EC2"
  type        = list(string)
}
