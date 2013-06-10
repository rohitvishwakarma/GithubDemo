@isTest
private class convertToClaTestClass {

    static testMethod void validateConvertToCLA() {
        Book__c b = new Book__c(Name = 'Behind the CLoud',Price__c=100);
        System.debug('Price Before' + b.Price__c);
        
        //insert book
        insert b;
        
        //Retrive the new book
        b = [SELECT Price__c FROM Book__c WHERE ID =:b.Id];
        System.debug('Price After' + b.Price__c);
        
        System.assertEquals(90, b.Price__c);
    }
}