az group create --name rg-bicep-demo --location canadacentral

az deployment group what-if \
  --resource-group rg-bicep-demo \
  --template-file main.bicep \
  --parameters sqlAdminPassword='YourStr0ngP@ss!'

az deployment group create \
--resource-group rg-bicep-demo \
--template-file main.bicep \
--parameters sqlAdminPassword='YourStr0ngP@ss!'


## Optional
az stack group create \
  --name bicep-demo-stack \
  --resource-group rg-bicep-demo \
  --template-file main.bicep \
  --parameters sqlAdminPassword='YourStr0ngP@ss!' \
  --action-on-unmanage deleteAll \
  --deny-settings-mode denyDelete