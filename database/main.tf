resource "aws_db_instance" "db" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = ""
  password             = ""
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true

}
output "endpoint" {
  value = aws_db_instance.db.endpoint
}