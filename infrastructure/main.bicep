@allowed(['dev', 'prod'])
param environment string

targetScope = 'resourceGroup'

 module appService 'appService.bicep' = {
  name: 'appService'
  params: {
    appName: 'workshop-dnazghbicep-J-Svensson-${environment}'
    location: 'centralus'
    environment: environment
  }
 }
