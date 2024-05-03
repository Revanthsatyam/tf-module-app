data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

#data "dns_a_record_set" "main" {
#  host = "internal-dev-private-alb-1366541837.us-east-1.elb.amazonaws.com"
#}