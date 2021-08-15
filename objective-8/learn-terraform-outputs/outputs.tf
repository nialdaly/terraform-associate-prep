output "vpc_id" {
  value = module.vpc.vpc_id
}

output "lb_url" {
  value = "http://${module.elb_http.this_elb_dns_name}/"
}

output "web_server_count" {
  value = length(module.ec2_instances.instance_ids)
}

output "db_username" {
  value     = aws_db_instance.database.username
  sensitive = true
}

output "db_password" {
  value     = aws_db_instance.database.password
  sensitive = true
}
