# DevOps Cloud Lab (Yandex Cloud)

## О проекте

Практический DevOps-проект по развёртыванию и сопровождению инфраструктуры в Yandex Cloud.

Проект был создан как personal DevOps lab для изучения:

- Infrastructure as Code (Terraform)
- Linux administration
- Docker / Docker Compose
- Cloud Infrastructure
- Monitoring systems
- Reverse Proxy
- CI/CD
- Infrastructure automation

Инфраструктура разворачивается в Yandex Cloud и управляется через Terraform.

---

# Используемый стек

## Cloud

- Yandex Cloud
- Compute Cloud
- VPC
- Subnet

## Infrastructure as Code

- Terraform

## OS

- Ubuntu Server 22.04 LTS

## Containerization

- Docker
- Docker Compose

## Monitoring

- Zabbix
- PostgreSQL
- Zabbix Agent2

## Web / Reverse Proxy

- Nginx
- Traefik (в процессе интеграции)

## Automation

- Ansible (в разработке)
- GitHub Actions (в разработке)

---

# Архитектура проекта

```text
Terraform
   ↓
Yandex Cloud
   ↓
Ubuntu VM
   ↓
Docker + Docker Compose
   ↓
Nginx / Traefik
   ↓
Zabbix + PostgreSQL
```

---

# Что реализовано

## Terraform Infrastructure

С помощью Terraform были реализованы:

- VPC network
- Subnet
- Ubuntu VM
- Public / Internal IP outputs
- SSH access по ключам
- Infrastructure as Code workflow

## Linux Administration

На сервере выполнена:

- настройка SSH-доступа
- настройка UFW firewall
- обновление системы
- базовая подготовка Ubuntu Server

## Docker Infrastructure

Развёрнут Docker-host:

- Docker
- Docker Compose
- контейнерная инфраструктура
- compose-based deployment

## Reverse Proxy

Настроен Nginx reverse proxy:

- публикация сервисов
- proxy_pass
- container routing
- HTTP access

## Monitoring

Развёрнут monitoring stack:

- Zabbix Server
- PostgreSQL
- Zabbix Web Interface
- Zabbix Agent2

Настроен базовый мониторинг Linux-сервера и контейнеров.

---

# Структура репозитория

```text
terraform/   - Terraform infrastructure
ansible/     - Ansible automation
docker/      - Docker Compose configs
monitoring/  - Monitoring configs/templates
scripts/     - Backup/deploy scripts
screenshots/ - Project screenshots
```

---

# Запуск Terraform

## Инициализация

```bash
terraform init
```

## Проверка конфигурации

```bash
terraform validate
```

## Планирование

```bash
terraform plan
```

## Развёртывание

```bash
terraform apply
```

---

# Docker Compose

## Запуск контейнеров

```bash
docker compose up -d
```

## Проверка контейнеров

```bash
docker ps
```

---

# Firewall

Используется UFW:

```bash
sudo ufw allow OpenSSH
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw enable
```

---

# Безопасность

В проекте используются:

- SSH authentication
- firewall rules
- separation of secrets
- .gitignore для чувствительных данных
- .env для переменных окружения

В репозиторий НЕ загружаются:

- private keys
- terraform.tfvars
- terraform state
- cloud credentials
- .env

---

# Roadmap

## Планируется реализовать

- Ansible automation
- GitHub Actions CI/CD
- Traefik + HTTPS
- Let's Encrypt
- Backup automation
- Kubernetes (k3s)
- Monitoring templates
- Alerting
- Multi-service deployment

---

# Скриншоты

В процессе оформления проекта будут добавлены:

- Terraform apply
- Docker containers
- Zabbix dashboard
- Infrastructure screenshots
- CI/CD pipeline

---

# Цель проекта

Проект используется как:

- практическая DevOps lab
- инфраструктурный pet project
- площадка для изучения cloud/devops инструментов
- portfolio project

---

# Автор

GitHub: xAltezzaRx

