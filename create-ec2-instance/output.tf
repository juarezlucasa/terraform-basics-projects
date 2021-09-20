output "aws_security_group_http_server_details" {
  value = aws_security_group.poc_patch_manager_sg
}

output "poc-patch-manager_public_dns" {
  value = aws_instance.poc-patch-manager.public_dns
}