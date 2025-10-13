# =========================================
# Script de sauvegarde automatique
# Auteur : Loïc PAGES
# Objectif : copier un dossier vers un backup avec rotation
# =========================================

# Répertoire à sauvegarder
$SourceDir = "C:\Users\TSSR_LP\Documents"

# Répertoire de destination du backup
$BackupDir = "C:\Users\TSSR_LP\Backup"

# Date pour le nom du backup
$Date = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$Dest = Join-Path $BackupDir "backup_$Date"

# Crée le dossier de backup
New-Item -ItemType Directory -Path $Dest -Force

# Copie les fichiers
Copy-Item -Path "$SourceDir\*" -Destination $Dest -Recurse -Force

# Supprime les backups de plus de 7 jours
Get-ChildItem -Path $BackupDir | Where-Object { $_.PSIsContainer -and $_.CreationTime -lt (Get-Date).AddDays(-7) } | Remove-Item -Recurse -Force

Write-Host "Backup terminé : $Dest"
