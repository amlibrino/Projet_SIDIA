trigger AppelWebServiceTrigger on Account (after insert, after update) {

    Set<Id> AccountId = new Set<Id>();
        if (Trigger.isInsert) {
 
            for(Account a : Trigger.new){
                AccountId.add(a.Id);
            }
    }
    if (Trigger.isUpdate) {
        for(Account a : Trigger.new){
            if(Trigger.oldMap.get(a.id).Domaine__c != a.Domaine__c ){
                    AccountId.add(a.Id);
                }
        }
    }
 
    if((system.isFuture()==false )&& (AccountId.size()>0)){
                
        GetDomaine.GetWebDomaine(AccountId);           
 
    }

}