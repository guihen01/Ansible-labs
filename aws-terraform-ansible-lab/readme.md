# 🚀 AWS Infrastructure Automation with Terraform & Ansible
## 📌 Overview

This project demonstrates the provisioning and configuration of AWS infrastructure using Infrastructure as Code (IaC) and automation tools.
- Terraform is used to provision AWS resources
- Ansible is used to configure EC2 instances automatically

- ## 🎯 Purpose of the Lab

The purpose of this lab is to demonstrate the end-to-end provisioning and automation of cloud infrastructure on AWS using Infrastructure as Code and configuration management tools.

---

## 🎯 Objectives

By completing this lab, the following objectives are achieved:

- Provision cloud infrastructure using Terraform (EC2, Security Groups)
- Establish secure SSH access using key-based authentication
- Automate server configuration using Ansible
- Deploy and manage a web server (Nginx) on a Linux instance
- Validate connectivity and service availability
- Troubleshoot real-world issues related to networking, permissions, and package management

---

## 🧠 Key Learning Outcomes

- Understanding the interaction between Terraform and AWS resources
- Using Ansible for configuration management and automation
- Managing SSH keys across different environments (Windows / WSL / Linux)
- Debugging cloud infrastructure and connectivity issues
- Applying DevOps practices in a real-world scenario
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


## 📄 Detailed Documentation

A detailed step-by-step guide is available here:
👉 [View Full Documentation (PDF)](docs/aws-ansible-lab.pdf)
