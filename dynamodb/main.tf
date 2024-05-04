resource "aws_dynamodb_table" "Pixars" {
    name = "Pixars"
    hash_key = "MIN"
    billing_mode = "PAY_PER_REQUEST"
    attribute {
      name = "MIN"
      type = "S"
    }
  
}