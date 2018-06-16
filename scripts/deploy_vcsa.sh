#!/usr/bin/env bash

# William Lam
# www.virtuallyghetto.com

NEW_OVTOOL="/usr/bin/ovftool"
VCSA_OVA=/Volumes/Storage/Images/Current/VMware-vCenter-Server-Appliance-5.5.0.5100-1312297_OVF10.ova

ESXI_HOST=192.168.1.100
ESXI_USERNAME=root
ESXI_PASSWORD=vmware123

VCSA_VMNAME=VCSA-5.5
VCSA_HOSTNAME=vcsa.virtuallyghetto.com
VCSA_IP=192.168.1.200
VCSA_NETMASK=255.255.255.0
VCSA_GATEWAY=192.168.1.1
VCSA_DNS=192.168.1.1
VM_NETWORK="VM Network"
VM_DATASTORE=mini-local-datastore-1

### DO NOT EDIT BEYOND HERE ###

"${NEW_OVTOOL}" --acceptAllEulas --skipManifestCheck --X:injectOvfEnv --powerOn "--net:Network 1=${VM_NETWORK}" --datastore=${VM_DATASTORE} --diskMode=thin --name=${VCSA_VMNAME} --prop:vami.hostname=${VCSA_HOSTNAME} --prop:vami.DNS.VMware_vCenter_Server_Appliance=${VCSA_DNS} --prop:vami.gateway.VMware_vCenter_Server_Appliance=${VCSA_GATEWAY} --prop:vami.ip0.VMware_vCenter_Server_Appliance=${VCSA_IP} --prop:vami.netmask0.VMware_vCenter_Server_Appliance=${VCSA_NETMASK} ${VCSA_OVA} "vi://${ESXI_USERNAME}:${ESXI_PASSWORD}@${ESXI_HOST}/"