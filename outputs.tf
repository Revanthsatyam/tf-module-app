#output "dns" {
#  value = data.dns_a_record_set.main
#}

output "aws_lb_target_group_public" {
  value = aws_lb_target_group.public
}

output "aws_lb_target_group_private" {
  value = aws_lb_target_group.main
}