public with sharing class DeleteRecordBatch implements Database.Batchable<sObject>{
    public DeleteRecordBatch(){}
    
    public static Database.QueryLocator start(Database.BatchableContext context){
        return Database.getQueryLocator('SELECT Id FROM Case '\Closed\'');
    }
    
    public static void execute(Database.batchableContext context, List<Case> scope){
        try {
            delete scope ;
        }  
        catch (Exception ex) {
            System.debug('Error deleting the scope :' + ex.getMessage());
        }
    }

    public static void finish(Database.BatchableContext context){
        System.debug('Batch Job Is Done !');
    }
}