@isTest
public  class CalculeNombreVoiture_Test {
    public static testMethod void CalculeNombreVoiture_Test() {
        Id recordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName().get('Compte_Professionnel').getRecordTypeId();
        
        Test.startTest();
        Account acc = Test_Utils.creatAccount(recordTypeId, 'testAccount1', '');
        Account acc2 = Test_Utils.creatAccount(recordTypeId, 'testAccount2', '');
        insert acc;
      //  insert acc2;
        Opportunity op = Test_Utils.creatOpportunity('NameOppo', System.today(),'New');
        insert op;
        Vehicule__c v = Test_Utils.creatVehicule('testV1',op.Id, acc.Id);
        Vehicule__c v2 = Test_Utils.creatVehicule('testV2',op.Id, acc.Id);
        insert new List<Vehicule__c>{v,v2};
        List <Account> a1 = [SELECT Id,Nombre_de_Voiture__c FROM Account WHERE Id =: acc.Id];
        System.assertEquals(2, a1[0].Nombre_de_Voiture__c);

        v2.Account__c=null;
        update v2;

        List <Account> a2 = [SELECT Id, Nombre_de_Voiture__c FROM Account WHERE Id =: acc.Id];
        System.assertEquals(1, a2[0].Nombre_de_Voiture__c);
        
        delete v;
        List <Account> a3 = [SELECT Id,Nombre_de_Voiture__c FROM Account];
        System.assertEquals(0, a3[0].Nombre_de_Voiture__c);

        Integer invocations =  Limits.getEmailInvocations();
        Test.stopTest();
        System.debug(invocations);     
    }
}
