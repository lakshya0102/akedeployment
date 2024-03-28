param location string
param acrname string 
param k8sname string 
param dnsPrefix string
param linuxAdminUsername string
param sshRSAPublicKey string


module acr './module/acr/acr.bicep'= {

  name : 'containerregistry' 
    params:{
      acrName: acrname
      location : location

    } 
  

}

module ake './module/ake/ake.bicep'= {
 name: 'k8s'
    params: {
      clusterName: k8sname
      dnsPrefix : dnsPrefix
      linuxAdminUsername : linuxAdminUsername
      sshRSAPublicKey: sshRSAPublicKey 
      location: location
    }
}

