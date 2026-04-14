# AWS + Ansible Dynamic Inventory Lab

## 🎯 Objective
Deploy and manage EC2 instances dynamically using Ansible and AWS tags.

## 🏗️ Architecture
- 2 EC2 instances (web servers)
- Dynamic inventory using AWS plugin
- Optional: Terraform provisioning

## ⚙️ Stack
- AWS EC2
- Ansible
- Python (boto3)
- Terraform (optional)

## 🔑 Key Concepts
- Dynamic inventory (`amazon.aws.aws_ec2`)
- Tag-based filtering
- Python virtual environment (venv)
- SSH connectivity

## 🚀 Setup

```bash
python3 -m venv venv
source venv/bin/activate
pip install ansible boto3 botocore
```

## 📁 Inventory Example

```yaml
plugin: amazon.aws.aws_ec2

regions:
  - ca-central-1

filters:
  instance-state-name: running
  "tag:Project": "ansible-lab"

compose:
  ansible_host: public_ip_address
```

## 🧪 Test

```bash
ansible-inventory --graph
ansible all -m ping
```

## ⚠️ Challenges & Fixes

- YAML errors (duplicate keys)
- Wrong field name (`public-ip` vs `public_ip`)
- venv vs system Python mismatch
- AWS tag filtering issues

## 💡 Key Takeaways

- Always validate YAML
- Tags are critical in AWS automation
- Environment consistency matters
- Debugging is part of DevOps
