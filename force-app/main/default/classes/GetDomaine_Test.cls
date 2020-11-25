
@isTest
public class GetDomaine_Test {

    static testMethod void testGetCallout() {
        Id recordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName().get('Compte_Professionnel').getRecordTypeId();
        
        Test.startTest();
        Account account1 = Test_Utils.creatAccount(recordTypeId, 'TestAccount5', 'www.google.fr');
        Account account2 = Test_Utils.creatAccount(recordTypeId, 'TestAccount6', 'www.renault.fr');
        insert new List<Account>{account1,account2};
 
        //cas update
        account2.Domaine__c = null;
        update account2;
        
        Test.stopTest();
        
        List<Account> accountList = [SELECT Id, Domaine__c, Logo__c, Biographie__c  FROM Account WHERE Id =: account1.Id];
        System.assertEquals(true,accountList[0].Logo__c != null);
        System.assertEquals(true,accountList[0].Biographie__c != null);
        
    }
   
}
