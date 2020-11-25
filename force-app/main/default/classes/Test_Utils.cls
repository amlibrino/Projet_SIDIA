
@isTest
public class Test_Utils {

    public static Account creatAccount (id recordtypeid , String Name, String Domaine){
        Account myaccount = new Account (recordtypeid = recordtypeid , Name = Name, Domaine__c = Domaine);
         return myaccount;
     }
 
     public static Opportunity creatOpportunity (String Name, Date CloseDates, String Stage){
         Opportunity myOppties = new Opportunity(Name = Name, CloseDate = CloseDates, StageName = Stage);
         return myOppties;    
     }

     public static Vehicule__c creatVehicule (String Name, String oppId, String AccountId){
         Vehicule__c myvehicule = new Vehicule__c(Name = Name, Opportunity__c = oppId, Account__c = AccountId);
         return myvehicule;
     }

}
