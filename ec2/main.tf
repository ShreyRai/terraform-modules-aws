resource "aws_instance" "ec201" {
    ami = var.ami
    instance_type = var.instance_type
    associate_public_ip_address = true
    tags = {
        Name = var.instance_name
    }
}