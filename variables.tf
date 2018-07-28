variable "vpc_id" {}
variable "region" {}
variable "ssh_key_name" {}
variable "count" {
  description = "Number of RabbitMQ nodes"
  default = 2
}
variable "subnet_ids" {
  description = "Subnets for RabbitMQ nodes"
  type = "list"
}
variable "ssh_security_group_ids" {
  description = "Security groups which should have SSH access to nodes."
  type = "list"
  default = []
}
variable "elb_security_group_ids" {
  description = "Security groups which should have access to ELB (amqp + http ports)."
  type = "list"
  default = []
}
variable "ssh_cidr_blocks" {
  description = "CIDR blocks which should have SSH access to nodes."
  default = []
}
variable "elb_cidr_blocks" {
  description = "CIDR blocks which should have access to ELB (amqp + http ports)."
  default = []
}
variable "admin_password" {
  description = "Password for 'admin' user"
  default = "password"
}
variable "rabbit_password" {
  description = "Password for 'rabbit' user"
  default = "password"
}
variable "rabbitmq_secret_cookie" {
  default = "supersecretcookie"
}
variable "instance_type" {
  default = "t2.small"
}
