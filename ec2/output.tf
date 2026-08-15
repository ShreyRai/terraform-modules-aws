output "public_ip" {
    value = aws_instance.ec201.public_ip
}

output "instance_id" {
    value = aws_instance.ec201.id
}

output "private_ip" {
  value = aws_instance.ec201.private_ip
}
