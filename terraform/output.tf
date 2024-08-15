output "instance_ips" {
  description = "Public IP address of the EC2 instances"
  value       = aws_instance.ubuntu-instance[*].public_ip
}