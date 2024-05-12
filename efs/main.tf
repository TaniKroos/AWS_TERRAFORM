resource "aws_efs_file_system" "fs" {
    creation_token = "My-efs"
    
    /* EFS creation */
  
}

resource "aws_efs_backup_policy" "fsbackup" {
  file_system_id = aws_efs_file_system.fs.id
  backup_policy {
    status = "ENABLED"
  }
  #EFS back policy 
}

resource "aws_efs_access_point" "test" {
    file_system_id = aws_efs_file_system.fs.id
    # access point 
    # used in orchestration for controlling access
}

resource "aws_vpc" "foo" {
  cidr_block = "192.168.0.0/16"
}
resource "aws_subnet" "alpha" {
  vpc_id = aws_vpc.foo.id
  cidr_block = "192.168.0.0/16"
  availability_zone = "us-west-2a"
}

resource "aws_efs_mount_target" "alpha" {
  file_system_id = aws_efs_file_system.fs.id
  subnet_id = aws_subnet.alpha.id
}