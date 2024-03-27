output "instance_info" {
  description = "Information about the EC2 instances"
  value = {
    instance_ids = aws_instance.demo_instance[*].id
    public_ips   = aws_instance.demo_instance[*].public_ip
    private_ips  = aws_instance.demo_instance[*].private_ip
  }
}

output "bucket_info" {
  description = "Information about the S3 bucket"
  value = {
    bucket_id     = aws_s3_bucket.my_bucket.id
    bucket_arn    = aws_s3_bucket.my_bucket.arn
    bucket_region = aws_s3_bucket.my_bucket.region
  }
}
