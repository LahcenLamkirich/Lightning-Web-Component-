public with sharing class DeleteRecordBatch implements Database.Batchable<sObject>{
    public DeleteRecordBatch(){}
    
    public static Database.QueryLocator start(Database.BatchableContext context){
        System.debug('Batch is starting !');
        return Database.getQueryLocator('SELECT Id FROM Case WHERE Status = \'Closed\'');
    }
    
    public static void execute(Database.batchableContext context, List<Case> scope){
        try {
            System.debug('Executing the batch class !');
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