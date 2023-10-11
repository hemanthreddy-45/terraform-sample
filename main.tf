provider "aws" {
  region = "us-east-2" 
}

resource "aws_instance" "demo_instance" {
  count         = 3
  ami           = "ami-0ded8326293d3201b" 
  instance_type = "t2.micro"
}
