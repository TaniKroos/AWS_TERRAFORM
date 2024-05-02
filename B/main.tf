resource "local_file" "pets" {
    filename = var.filename
    content = "My fav pet is ${random_pet.my-pet.id}"
    
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
    
}