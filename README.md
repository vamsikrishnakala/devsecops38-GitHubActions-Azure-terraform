# devsecops38-GitHubActions-Azure-terraform
devsecops38-GitHubActions-Azure-terraforms

RG=GITAGENT
echo "Creating Azure Resource Group"
az group --location eastus -n ${RG}

echo "creating Azure Virutal Network"

az network vnet create -g ${RG} -n ${RG}-vNET1 --address-prefix 10.1.0.0/16 \
--subnet-name ${RG}-Subnet-1 --subnet-prefix 10.1.1.0/24 -l eastus

az network nsg create -g ${RG} -n${RG}_NSG1 -l eastus

az network nsg rules create -g ${RG} --nsg-name ${RG}_NSG1 -n ${RG}_NSG1_RULE1 --priority 100 \
--source-address-prefixes '*' --source-port-ranges '*' --destination-address-prefixes '*' \
--destination-port-ranges'*' --access Allow '*' --protocol  Tcp  --description "Allowing All Traffic for Now"

IMAGE='Canonical:0001-com-ubuntu-server-focal-dailt:20_04-daily-lts-gen:latest'

az vm create -g ${RG} -n LinuxVM1 --image $IMAGE --vnet-name ${RG}-vNET1 \
-subnet ${RG}-Subnet-1 --admin-username





