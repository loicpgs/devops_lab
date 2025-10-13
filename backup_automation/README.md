# 🗂 Backup Automation

## 📖 Description
Le projet **Backup Automation** fournit des scripts pour automatiser la sauvegarde de fichiers et dossiers importants sur **Windows** et **Linux/macOS**.  

- ✅ Script Bash (`backup.sh`) pour Linux/macOS  
- ✅ Script PowerShell (`backup.ps1`) pour Windows  

Objectif : démontrer des compétences en **automatisation, scripting et gestion de systèmes**, essentielles pour un futur rôle DevOps.

---

## 🛠 Fonctionnalités

- Sauvegarde automatique d’un dossier source vers un dossier de destination  
- Rotation des backups : suppression des sauvegardes de plus de 7 jours  
- Scripts **commentés** et faciles à personnaliser  
- Compatible **Windows et Linux/macOS**

---

## 📁 Structure du projet

backup_automation/
├── backup.sh       # Script Bash pour Linux/macOS
├── backup.ps1      # Script PowerShell pour Windows
└── README.md       # Ce fichier

## 🚀 Instructions d’utilisation

### Linux / WSL / macOS

**Se rendre dans le dossier du projet**
cd scripts/backup_automation

**Rendre le script exécutable**
chmod +x backup.sh

**Lancer le script**
./backup.sh

### Windows (PowerShell) 

**Se rendre dans le dossier du projet**
cd scripts\backup_automation

**Autoriser l'exécution des scripts si nécessaire**
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

**Lancer le script**
.\backup.ps1

## ⚙️ Personnalisation

| Élément               | Bash             | PowerShell     |
|-----------------------|----------------|----------------|
| Répertoire source      | `SOURCE_DIR`    | `$SourceDir`   |
| Répertoire destination | `BACKUP_DIR`    | `$BackupDir`   |
| Rétention (jours)      | `+7` dans `find`| `.AddDays(-7)` |

