trigger CalculeNombreVoiture on Vehicule__c (after insert, after update, after delete) {
    List<Vehicule__c> listV = new List<Vehicule__c>();
    //a. Créer un Trigger pour calculer le nombre de voiture
    if (trigger.isInsert) {
        CalculeNombreVoiture.CalculeNbVehicule(Trigger.new);
    }if (trigger.isUpdate) {
           for( Vehicule__c c: trigger.new){      
            if(Trigger.oldMap.get(c.id).Account__c != c.Account__c){
                if (Trigger.oldMap.get(c.id).Account__c !=null) {
                    listV.add(Trigger.oldMap.get(c.id));
                }if (c.Account__c !=null) {
                    listV.add(c);  
                }
           } 
        }
           if (listV.size()>0) {
            CalculeNombreVoiture.CalculeNbVehicule(listV);
           }
    }if (trigger.isDelete) {
        CalculeNombreVoiture.CalculeNbVehicule(Trigger.old);
    }
}