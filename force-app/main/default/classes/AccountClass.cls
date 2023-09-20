public with sharing class AccountClass {
    public AccountClass() {}
    public static void getAllAccounts(){
        List<Account> accounts  = [SELECT name, id FROM Account];
        for (Account acc : accounts) { 
            System.debug('The account : ' + acc);
        }
    }
}