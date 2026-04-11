# 🚀 Lab DevOps : AWS + Terraform + Ansible (2 EC2 + Load Balancer)

## 🎯 Objectif

Déployer une infrastructure cloud complète sur AWS avec :

* 2 instances EC2 (Amazon Linux)
* 1 Application Load Balancer (ALB)
* Configuration automatique avec Ansible (NGINX)
* Répartition de charge entre les instances

---

## 🧱 Architecture

```
Internet
   ↓
Application Load Balancer
   ↓
EC2 (web1)     EC2 (web2)
   ↓               ↓
 NGINX           NGINX
```

---

## ⚙️ Technologies utilisées

* AWS (EC2, ALB, Security Groups)
* Terraform (Infrastructure as Code)
* Ansible (Configuration Management)
* NGINX (Web Server)

---

## 📁 Structure du projet

```
.
├── terraform/
│   ├── main.tf
│   ├── ec2.tf
│   ├── alb.tf
│   ├── security_groups.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars
│
├── ansible/
│   ├── inventory.ini
│   ├── ansible.cfg
│   ├── playbooks/
│   │   └── site.yml
│   └── roles/
│       └── nginx/
│           ├── tasks/main.yml
│           ├── handlers/main.yml
│           └── templates/index.html.j2
│
└── README.md
```

---

## 🚀 Déploiement

### 1. Terraform

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

---

### 2. Récupérer les IP

```bash
terraform output instance_ips
```

---

### 3. Configurer Ansible

Modifier `inventory.ini` :

```
[web]
web1 ansible_host=IP1
web2 ansible_host=IP2
```

---

### 4. Déployer NGINX

```bash
cd ../ansible
ansible-playbook playbooks/site.yml
```

---

## 🌐 Test

Récupérer le DNS du Load Balancer :

```bash
terraform output alb_dns
```

Ouvrir dans le navigateur :

```
http://<ALB_DNS>
```

---

## 🎯 Résultat attendu

En rafraîchissant la page :

```
Server: web1
Server: web2
Server: web1
Server: web2
```

---

## 🔐 Sécurité

* Accès SSH restreint à l’IP locale
* EC2 non exposées directement (accès via ALB uniquement)
* Port 80 autorisé uniquement depuis le Load Balancer

---

## 🧠 Points clés appris

* Infrastructure as Code avec Terraform
* Load Balancing avec AWS ALB
* Configuration automatisée avec Ansible
* Debugging réseau (Security Groups, SSH, health checks)
* Architecture cloud sécurisée

---

## 🚀 Améliorations possibles

* Auto Scaling Group (ASG)
* HTTPS avec ACM
* Inventory dynamique Ansible
* Pipeline CI/CD

---

## 👤 Auteur

Projet réalisé dans le cadre d’un apprentissage DevOps / Cloud AWS.

---

