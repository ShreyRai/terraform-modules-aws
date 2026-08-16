output "vpc_id" {
    value = aws_vpc.vpc01.id
}
output "pub_sub_id" {
    value = aws_subnet.pub-sub-01.id 
}
output "pri_sub_id" {
   value = aws_subnet.pri-sub-01.id
}