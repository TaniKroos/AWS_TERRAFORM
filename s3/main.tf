resource "aws_s3_bucket" "finn" {
    bucket = "finn4-5-2024"
    tags = {
      Description = "steven Finn"
    }
}

resource "aws_s3_object" "finn-2024" {
    bucket = aws_s3_bucket.finn.id //bucket to upload to
    key = finn2024.doc //name of object
    content = "/finn2024.doc" //path to file
}

data "aws_iam_group" "finn-data" {
  group_name = "finn-analyst"

}
resource "aws_s3_bucket_policy" "finn-policy" {
    bucket = aws_s3_bucket.finn.id
    policy = <<EOF
        
    EOF
  
}