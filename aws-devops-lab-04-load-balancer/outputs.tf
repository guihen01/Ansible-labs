output "instance_ips" {
  description = "Public IPs des EC2"
  value       = aws_instance.web[*].public_ip
}

output "alb_dns" {
  description = "DNS du Load Balancer"
  value       = aws_lb.app_lb.dns_name
}