resource "aws_instance" "app_server" {
    ami = var.ami
    instance_type = "t2.medium"
    tags = {
      
    }
    depends_on = [  aws_dynamodb_table.db,aws_s3_bucket.data]
}