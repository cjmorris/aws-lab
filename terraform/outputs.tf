output "instance_1_ip" {
  value = aws_instance.test_instance_1.public_ip
}

output "instance_2_ip" {
  value = aws_instance.test_instance_2.public_ip
}