output "app-ip" {
  value = [aws_instance.app-instance.*.public_ip]
}
