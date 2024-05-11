resource "aws_vpc" "vpc" {
    cidr_block = "192.168.0.0/16"
    tags = {
      Name = "My-Vpc"
    }
}

resource "aws_subnet" "subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "My-Subnet"
  }

}
resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.vpc.id

}


# resource "aws_internet_gateway_attachment" "attachment" {
#     vpc_id = aws_vpc.vpc.id
#     internet_gateway_id = aws_internet_gateway.internet-gateway.id
# }