#Pre requis 
#Avoir un compte mail utilisable

# Installer pip pour gerer les packets de python
sudo yum -y install python3-pip
# Installer l'utilitaire pour monitoring 
sudo pip install psutil 
# Creation du script python pour recuperer les ressources et l'envoyer par mail
sudo nano .py
# Installation de crontab pour prendre en charge les automatisations de scritps sur fichier cron et démarrage
sudo yum -y install cronie
sudo systemctl start crond

# On ajout l'envoie des mails dans le crontab 
crontab -e
* * * * * /usr/bin/python3 /home/user/scripts/print.py

# On monitore le journal d'envoie de mail 

tail -f -n 1 journal.log
