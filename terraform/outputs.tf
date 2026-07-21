# output "ubuntu_ami_id" {
#   description = "AMI oficial mais recente do Ubuntu Server 24.04 LTS"
#   value       = data.aws_ssm_parameter.ubuntu_2404_ami.value
#   sensitive   = true
# }

output "ubuntu_ami_id" {
  description = "AMI oficial mais recente do Ubuntu Server 24.04 LTS"
  value       = data.aws_ami.ubuntu.id
}

output "ec2_instance_id" {
  description = "ID da instância EC2 do WordPress"
  value       = aws_instance.wordpress.id
}

output "ec2_public_ip" {
  description = "IP público da instância EC2 do WordPress"
  value       = aws_instance.wordpress.public_ip
}

output "ec2_public_dns" {
  description = "DNS público da instância EC2 do WordPress"
  value       = aws_instance.wordpress.public_dns
}

output "elastic_ip" {
  description = "Elastic IP da instância"
  value       = aws_eip.wordpress.public_ip
}