public with sharing class DeleteRecordQueable implements Queueable {
    public DeleteRecordQueable() {}

    public static void execute(QueueableContext context) {
        List<Case> casesToDelete = [SELECT Id FROM Case WHERE Status = 'Closed'];
        try {
            if(casesToDelete.isEmpty()) {
                System.debug('The list you want to delete is empty !!');
            }else {
                System.debug('Deleting the cases ....');
                delete casesToDelete ;
            }
        }
        catch (Exception ex) {
            System.debug('The Error is : ' + ex.getMessage());   
        }
    }   
}