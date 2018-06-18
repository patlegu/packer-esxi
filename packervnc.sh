
# Modifier le ficher /etc/vmware/firewall/service
# Lancer les commandes suivantes pour pouvoir éditer le fichier.
#   chmod 644 /etc/vmware/firewall/service
#   chmod +t /etc/vmware/firewall/service.
# Ajouter les lignes contenu dans le fichier packervnc.XML
# Repositionner les droits sur le fichiers :
#   chmod 444 /etc/vmware/firewall/services
# Lancer les commandes suivantes :
#   esxcli network firewall refresh
#   esxcli network firewall ruleset list

scp packervnc.xml <ESX ADDRESS>:/etc/vmware/firewall/
ssh <ESX ADDRESS> 'esxcli network firewall refresh && esxcli network firewall ruleset list | grep packer-vnc'
