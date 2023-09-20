public with sharing class getAllAccounts {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAllAccountRecords(){
        return [SELECT id, Name, AccountNumber, AnnualRevenue FROM Account];
    }
}