resource "aws_dynamodb_table" "db" {
    name = "user_data"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "Employee_id"
    
    attribute {
      name = "Employee_id"
      type = "N"
    }
}