resource "local_file" "ansible_inventory" {
  filename = "${path.module}/../ansible/inventory/hosts.ini"

  content = <<-EOT
[wordpress]
wordpress-server ansible_host=${aws_eip.wordpress.public_ip}

[wordpress:vars]
ansible_user=ubuntu
ansible_ssh_private_key_file=~/.ssh/wordpress-aws
ansible_python_interpreter=/usr/bin/python3
EOT

  file_permission = "0644"

  depends_on = [
    aws_eip_association.wordpress
  ]
}
