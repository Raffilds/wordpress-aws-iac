variable "aws_region" {
  description = "Região onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nome do projeto"
  type        = string
  default     = "wordpress-aws-iac"
}

variable "environment" {
  description = "Ambiente"
  type        = string
  default     = "lab"
}

variable "ssh_allowed_cidrs" {
  description = "Lista de IPs autorizados para SSH"
  type        = list(string)
}