provider "aws" {
  region = "us-east-2" 
}

resource "aws_instance" "demo_instance" {
  count         = 3
  ami           = "ami-0c42696027a8ede58" 
  instance_type = "t2.micro"
}