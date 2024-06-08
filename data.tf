# data "aws_ami" "ami" {
#   most_recent = true
#   name_regex  = "Centos-8-DevOps-Practice"
#   owners      = ["973714476881"]
# }

data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "roboshop-ami-v1"
  owners      = ["590183653013"]
}

data "dns_a_record_set" "private_alb_name" {
  host = var.private_alb_name
}