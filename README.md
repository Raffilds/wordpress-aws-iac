# 🚀 WordPress AWS IaC

![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?logo=terraform)
![AWS](https://img.shields.io/badge/AWS-EC2%20%7C%20VPC%20%7C%20IAM-FF9900?logo=amazonaws)
![Ansible](https://img.shields.io/badge/Ansible-Automation-EE0000?logo=ansible)
![Docker](https://img.shields.io/badge/Docker-Containers-2496ED?logo=docker)
![Nginx](https://img.shields.io/badge/Nginx-Reverse%20Proxy-009639?logo=nginx)
![WordPress](https://img.shields.io/badge/WordPress-CMS-21759B?logo=wordpress)

## 📖 Sobre o Projeto

Este projeto demonstra como provisionar automaticamente uma infraestrutura completa na AWS utilizando **Terraform** e **Ansible**, disponibilizando um ambiente de produção para WordPress com Docker, Nginx e HTTPS.

Todo o ambiente é criado através de Infraestrutura como Código (IaC), reduzindo intervenção manual, aumentando a padronização e permitindo que um novo ambiente seja criado em poucos minutos.

---

# 🏗 Arquitetura

```text
Terraform
      │
      ▼
 AWS
 ├── VPC
 ├── Security Groups
 ├── Elastic IP
 └── EC2 Ubuntu
      │
      ▼
Ansible
      │
      ├── Docker
      ├── MariaDB
      ├── WordPress
      ├── Nginx
      └── Certbot
      │
      ▼
 HTTPS
      │
      ▼
 WordPress Online
```

---

# 🎯 Objetivos

- Provisionar infraestrutura AWS automaticamente
- Configurar servidor Ubuntu
- Instalar Docker e Docker Compose
- Criar ambiente WordPress
- Configurar MariaDB
- Configurar Nginx Reverse Proxy
- Emitir certificado SSL automaticamente
- Garantir idempotência dos playbooks
- Automatizar todo o processo de implantação

---

# ☁ Infraestrutura AWS

O Terraform provisiona:

- EC2 Ubuntu
- Elastic IP
- VPC
- Internet Gateway
- Route Table
- Security Groups
- Inventory automático do Ansible

---

# 🤖 Automação com Ansible

Após a criação da infraestrutura, o Ansible realiza automaticamente:

- Atualização do sistema operacional
- Instalação do Docker
- Instalação do Docker Compose
- Configuração do Firewall
- Deploy do MariaDB
- Deploy do WordPress
- Configuração do Nginx
- Emissão automática do certificado SSL
- Configuração do HTTPS

---

# ⚙ Tecnologias Utilizadas

- Terraform
- AWS
- Ansible
- Docker
- Docker Compose
- Ubuntu Server
- MariaDB
- WordPress
- Nginx
- Let's Encrypt
- Certbot

---

# 📂 Estrutura do Projeto

```text
terraform/
├── providers.tf
├── network.tf
├── security-group.tf
├── ec2.tf
├── outputs.tf

ansible/
├── playbooks/
├── templates/
├── group_vars/
└── inventory/

README.md
```

---

# 🚀 Fluxo de Provisionamento

```text
terraform apply

        │

Provisiona AWS

        │

Cria Inventory

        │

Ansible conecta

        │

Instala Docker

        │

Sobe MariaDB

        │

Sobe WordPress

        │

Configura Nginx

        │

Emite SSL

        │

Site disponível
```

---

# 🔐 Segurança

- Security Groups restritivos
- HTTPS com Let's Encrypt
- Inventário gerado automaticamente
- Variáveis sensíveis protegidas com Ansible Vault
- SSH utilizando chave pública

---

# ▶ Como Executar

## Provisionar Infraestrutura

```bash
cd terraform

terraform init
terraform apply
```

## Configurar Servidor

```bash
cd ansible

ansible-playbook playbooks/site.yml --ask-vault-pass
```

Após alguns minutos o ambiente estará disponível.

---

# 📸 Resultado

Adicionar imagens de:

- Terraform Apply
- PLAY RECAP do Ansible
- Site WordPress
- HTTPS funcionando
- docker ps

---

# 📈 Melhorias Futuras

- AWS Secrets Manager
- GitHub Actions
- Deploy automático do WordPress
- Backup para Amazon S3
- Monitoramento com Prometheus
- Monitoramento com Grafana
- Auto Scaling
- Load Balancer
- RDS
- Blue/Green Deploy

---

# 👨‍💻 Autor

**Rafael Barboza**

Analista de Infraestrutura | Cloud | DevOps | Observabilidade

LinkedIn:
https://linkedin.com/in/SEU_PERFIL

GitHub:
https://github.com/Raffilds
