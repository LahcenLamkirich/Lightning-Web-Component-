// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

// Running the batch class : 
Database.executeBatch(new DeleteRecordBatch(), 200);   
// Running the Queueable Class : 
System.enqueueJob(new DeleteRecordQueable());