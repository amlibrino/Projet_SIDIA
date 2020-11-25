public class GetDomaine {
    @Future (callout=true)
    public static void GetWebDomaine(Set<Id> accId){
        List<Account> acc = [SELECT Id, Biographie__c, Domaine__c, Logo__c FROM Account 
                                WHERE id in:accId];

        for(Account a :acc){
            if (a.Domaine__c != null) {
                Http http = new Http();
                HttpRequest request = new HttpRequest();
                String endpoint = a.Domaine__c;
                String monSite = 'https://api.fullcontact.com/v2/company/lookup.json?domain=';
                request.setHeader('X-fullContact-APIkey', 'zAh5jya4hT109wfOq01wjayqXfHwMhPI');
                request.setEndpoint(monSite + endpoint ); //+ submittedId
                request.setMethod('GET');
                
                HttpResponse response = new HttpResponse();
                if(!Test.isRunningTest()){ 
                    response = http.send(request);
                    }else {
         
                        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetDomaineJson'];
                        String body = sr.Body.toString();
                        //String body = String.valueOf(sr);
                        response.setBody(body); //= String.valueOf(body);
                        response.setStatusCode(200);
                    }
             // If the request is successful, parse the JSON response.
                if (response.getStatusCode() == 200) {
                   
                    String responseJSON = response.getBody();
    
                    JasonParse listRep = (JasonParse) JSON.deserialize(responseJSON, JasonParse.class);
    
                    a.Logo__c = listRep.logo;
                    a.Biographie__c = listRep.organization.overview;
            }else {
                a.Logo__c = null;
                a.Biographie__c = null;
            }
            }else{
                a.Logo__c = null;
                a.Biographie__c = null;
            }     
        } 
    update acc;           
    }
   
}
