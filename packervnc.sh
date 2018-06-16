scp packervnc.xml esx:/etc/vmware/firewall/
ssh esx 'esxcli network firewall refresh && esxcli network firewall ruleset list | grep packer-vnc'