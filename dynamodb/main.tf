resource "aws_dynamodb_table" "Pixars" {
    name = "Pixars"
    hash_key = "MIN"
    billing_mode = "PAY_PER_REQUEST"
    attribute {
      name = "MIN"
      type = "S"
    }
  
}
resource "aws_dynamodb_table_item" "upload" {
  table_name = aws_dynamodb_table.Pixars.name
  hash_key   = aws_dynamodb_table.Pixars.hash_key
  item = <<EOF
 {
   "MIn": {"N": "1"}
}
EOF
}