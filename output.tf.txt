output "instance_info" {
  description = "Information about the EC2 instances"
  value = {
    instance_ids = aws_instance.demo_instance[*].id
    public_ips  = aws_instance.demo_instance[*].public_ip
    private_ips = aws_instance.demo_instance[*].private_ip
  }
}