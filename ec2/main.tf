resource "aws_instance" "webserver" {
   ami = "ami-0f58b397bc5c1f2e8"
   instance_type = "t2.micro"
   tags = {
     Name = "webserver"
     Description = "An nginx server on ubuntu"
   }
   provisioner "remote-exec" {
    inline = [
     "sudo apt update"
   ] 
   }

   connection {
     type = "ssh"
     host = self.public_ip
     user = "ubuntu"
     private_key = file("/root/.ssh/web")
     
   }
   key_name = aws_key_pair.web.id 
   vpc_security_group_ids = [aws_security_group.ssh-access.id]
}
resource "aws_key_pair" "web" {
    public_key = file("/Users/kroos31/.ssh/id_rsa.pub")
}

resource "aws_security_group" "ssh-access" {
    name = "ssh-access"
    description = "allow ssh from internet"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

output "publicip" {  
    value = aws_instance.webserver.public_ip
}