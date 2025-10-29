# 🖥️ Web Deployment Automatisé avec Ansible

Ce projet fait partie de mon **DevOps Lab** et montre comment déployer automatiquement un serveur web **Nginx** sur une machine locale ou distante grâce à **Ansible**.

---

## 🎯 Objectif

- Automatiser l’installation et la configuration d’un serveur web  
- Déployer une page HTML personnalisée via **template Jinja2**  
- Comprendre le fonctionnement des **rôles Ansible** et des variables

---

## 🧱 Structure du projet

02-web_deployment_ansible/
├── inventory.ini                # Définition des hôtes et groupes
├── site.yml                     # Playbook principal
└── roles/
    └── webserver/
        ├── tasks/main.yml       # Installation et configuration Nginx
        ├── templates/index.html.j2 # Page HTML déployée
        └── vars/main.yml        # Variables du rôle (ex: port Nginx)


## ⚙️ Installation et exécution

1. **Se placer dans le dossier du projet**
 

 cd C:\Users\TSSR_LP\Desktop\devops_lab\web_deployment_ansible

2. **Exécuter le playbook**

ansible-playbook -i inventory.ini site.yml

3. **Vérifier le résultat**

-Ouvrir un navigateur sur http://localhost
-La page HTML personnalisée doit s’afficher avec le message :
"Bienvenue sur le Lab de [user]"

## 🧩 Concepts abordés

-Rôles Ansible (roles/webserver)

-Variables et templating Jinja2 (index.html.j2)

-Idempotence des tâches (réexécutable sans effet secondaire)

-Automatisation de la configuration d’un service système

## 🚀 Évolutions possibles

-Ajouter un handler pour recharger Nginx si le  template change

-Déployer le site sur un serveur distant ou une VM cloud

-Ajouter un second rôle pour la sécurité ou firewall

-Paramétrer le port Nginx via la variable dans vars/   main.yml
