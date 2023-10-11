provider "aws" {
  region = "us-east-2" 
}
data "aws_vpc" "my_vpc" {
  id = "vpc-02300b005147bb372"  # Replace with the desired VPC ID
}
data "aws_subnet" "my_subnet" {
  id = "subnet-028ccb0b988ef558e"  # Replace with the desired subnet ID
}
resource "aws_instance" "demo_instance" {
subnet_id = data.aws_subnet.my_subnet.id 
count         =  3
  ami           = "ami-024e6efaf93d85776" 
  instance_type = "t2.micro"
}
