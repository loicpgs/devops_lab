# 🐳 Docker Flask Stack - DevOps Lab

Ce projet fait partie de mon **DevOps Lab** et montre comment déployer une **application Flask** avec **Nginx** en utilisant **Docker et Docker Compose**.

---

## 🎯 Objectif

- Conteneuriser une application Python Flask  
- Utiliser Docker Compose pour orchestrer plusieurs conteneurs  
- Configurer Nginx comme reverse proxy  
- Comprendre les concepts DevOps : isolation, orchestration et port mapping

---

## 🧱 Structure du projet

```bash
03-docker_flask_stack/
├── app/
│   ├── app.py
│   ├── requirements.txt
│   └── templates/
│       └── index.html
├── nginx/
│   └── default.conf
├── docker-compose.yml
└── README.md

## ⚙️ Installation et exécution

1. **Se placer dans le dossier du projet**

cd C:\Users\TSSR_LP\Desktop\devops_lab\docker_flask_stack

2. **Builder et lancer les conteneurs**

docker-compose up -d --build

3. **Vérifier que les conteneurs tournent**

docker ps

4. **Tester l’application**

Ouvrir un navigateur sur http://localhost:8080

Tu devrais voir : "Bienvenue sur la Flask App du DevOps Lab 🚀"

##🧩 Concepts abordés

Dockerfile et dépendances Python

Volumes Docker pour synchroniser le code

Nginx comme reverse proxy

Docker Compose pour orchestrer plusieurs services

Isolation et port mapping des conteneurs

##🚀 Évolutions possibles

Ajouter PostgreSQL ou une base de données dans un conteneur séparé

Ajouter environment variables pour la configuration Flask

Ajouter Traefik ou Certbot pour HTTPS et gestion avancée du reverse proxy

Mettre en place CI/CD Docker avec GitHub Actions