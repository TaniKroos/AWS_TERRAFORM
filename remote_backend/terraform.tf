terraform {
  backend "s3" {
    bucket = "finn" //bucket name
    key = "finn/terraform.tfstate" //s3 object path
    region = "us-west-1"    
    dynamodb_table = "state-locking" // 
    
  }
}