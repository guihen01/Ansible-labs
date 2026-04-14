# AWS + Ansible Dynamic Inventory Lab

## 🎯 Objective
Deploy and manage EC2 instances dynamically using Ansible and AWS tags.

---

## 🏗️ Architecture
- 2 EC2 instances (web servers)
- Dynamic inventory using AWS plugin
- Optional: Terraform provisioning

---

## ⚙️ Stack
- AWS EC2
- Ansible
- Python (boto3)
- Terraform (optional)

---

## 🔑 Key Concepts
- Dynamic inventory (`amazon.aws.aws_ec2`)
- Tag-based filtering
- Python virtual environment (venv)
- SSH connectivity

---

## 🖥️ AWS EC2 Instances (Tag Filtering)

The EC2 instances are filtered using:
- Instance state = running  
- Tag: `Project = ansible-lab`

This ensures Ansible dynamically targets only the relevant infrastructure.

![EC2 Instances](images/aws-ec2-filter-tags.png)

---

## 🚀 Setup

```bash
python3 -m venv venv
source venv/bin/activate
pip install ansible boto3 botocore

plugin: amazon.aws.aws_ec2

regions:
  - ca-central-1

filters:
  instance-state-name: running
  "tag:Project": "ansible-lab"

compose:
  ansible_host: public_ip_address

