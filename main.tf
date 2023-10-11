provider "aws" {
  region = "us-east-2" 
}

resource "aws_instance" "demo_instance" {
  count         = 3
  ami           = "ami-03d294e37a4820c21" 
  instance_type = "t2.micro"
}
