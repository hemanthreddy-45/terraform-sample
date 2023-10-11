provider "aws" {
  region = "us-east-2" 
}

resource "aws_instance" "demo_instance" {
  count         = 3
  ami           = "ami-0f5ee92e2d63afc18" 
  instance_type = "t2.micro"
}
