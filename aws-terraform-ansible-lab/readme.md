# 🚀 AWS Infrastructure Automation with Terraform & Ansible
## 📌 Overview

This project demonstrates the provisioning and configuration of AWS infrastructure using Infrastructure as Code (IaC) and automation tools.
- Terraform is used to provision AWS resources
- Ansible is used to configure EC2 instances automatically
---
## 🏗️ Architecture
- AWS EC2 instance (Amazon Linux)
- Security Group (SSH + HTTP)
- SSH key-based authentication
- Ansible automation (Nginx deployment)
---
## ⚙️ Technologies Used

- AWS (EC2, VPC, Security Groups)
- Terraform
- Ansible
- Linux (WSL)
- SSH
---
## 🚀 What This Project Does

- Provisions an EC2 instance using Terraform
- Configures networking (security groups)
- Connects securely via SSH
- Automates server configuration using Ansible
- Installs and starts Nginx web server
---
## 📋 Prerequisites
- AWS account
- Terraform installed
- Ansible installed (Linux / WSL)
- SSH key pair

---

## ▶️ Usage

### 1. Deploy infrastructure

```bash
cd terraform
terraform init
terraform apply

## ▶️ Configure with ansible

cd ../ansible
ansible all -i inventory -m ping
ansible-playbook -i inventory setup.yml

## ▶️ access the web serer

http://<EC2_PUBLIC_IP>
