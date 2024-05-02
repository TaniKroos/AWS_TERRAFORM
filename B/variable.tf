variable "filename" {
        default = "/Users/kroos31/Desktop/linux/terraform/petss.txt"
}   
variable "content" {
  default = "we love petsss"
}
variable "prefix" {
   default = "MR"
}
variable "separator" {
  default = "."
}
variable "length" {
    default = "1"
}
variable "object" {
    type = object({
      name = string
      color = string
      age = number
      food = list(string)

    })
    default = {
      name = "Bale"
      color = "White"
      age = 8
      food = [ "chicker" ,"fish" ]

    }
}