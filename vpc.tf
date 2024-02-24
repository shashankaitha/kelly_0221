resource "aws_vpc" "example" {
  cidr_block = var.vpc_cidr

  tags = {
    Name       = "terraform_vpc"
    Project_id = "C1364HT"
  }
}

resource "aws_subnet" "subnet_1" {
  cidr_block = var.subnet_cidr_1
  vpc_id = aws_vpc.example.id
}

resource "aws_subnet" "subnet_2" {
  cidr_block = "10.0.2.0/24"
  vpc_id = aws_vpc.example.id
}