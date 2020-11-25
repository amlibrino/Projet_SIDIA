public with sharing class CalculeNombreVoiture {

    public static void CalculeNbVehicule(List<Vehicule__c> listVehicule){
        Set<Id> AccountId = new Set<Id>();
        for (Vehicule__c v : listVehicule) {
            AccountId.add(v.Account__c);            
        } 
        List<Account> listAcount = [SELECT id, Nombre_de_Voiture__c, 
                                    (SELECT Id FROM Vehicules__r) 
                                    FROM Account WHERE id in: AccountId];
    
    for(Account acc : listAcount) {
        if (acc.Vehicules__r != null) {
            acc.Nombre_de_Voiture__c = acc.Vehicules__r.size();
        }else {
            acc.Nombre_de_Voiture__c = 0;
        }
    }
    update listAcount;
    }

}