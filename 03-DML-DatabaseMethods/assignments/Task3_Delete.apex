/*
 Task 3 – Record Deletion
    Delete the records created in Task 1.
*/

// Delete Contact 1, 2, 3
Contact delContact1 =[
    SELECT Id
    FROM Contact WHERE UniqueId__c = 'CON001' LIMIT 1
];
delete delContact1;
System.debug('Contact 1 deleted (soft delete) → Id: ' + delContact1.Id); 

Contact delContact2 =[
    SELECT Id
    FROM Contact WHERE UniqueId__c = 'CON002' LIMIT 1
];
delete delContact2;
System.debug('Contact 2 deleted (soft delete) → Id: ' + delContact2.Id);

Contact delContact3 =[
    SELECT Id
    FROM Contact WHERE UniqueId__c = 'CON003' LIMIT 1
];
delete delContact3;
System.debug('Contact 3 deleted (soft delete) → Id: ' + delContact3.Id); 

// Delete Account 1, 2, 3

Account delAcc1 = [SELECT Id FROM Account WHERE Name = 'Tech Solutions Ltd' LIMIT 1];
delete delAcc1;
System.debug('Account 1 deleted (soft delete) → Id: ' + delAcc1.Id);

Account delAcc2 = [SELECT Id FROM Account WHERE Name = 'Finance Corp' LIMIT 1];
delete delAcc2;
System.debug('Account 2 deleted (soft delete) → Id: ' + delAcc2.Id);

Account delAcc3 = [SELECT Id FROM Account WHERE Name = 'Healthcare Systems' LIMIT 1];
delete delAcc3;
System.debug('Account 3 deleted (soft delete) → Id: ' + delAcc3.Id);

// Delete Opportunity 1, 2, 3

Opportunity delOpp1 = [SELECT Id FROM Opportunity WHERE Name = 'Tech Solutions Ltd - Deal-2025-001' LIMIT 1];
delete delOpp1;
System.debug('Opportunity 1 deleted (soft delete) → Id: ' + delOpp1.Id);

Opportunity delOpp2 = [SELECT Id FROM Opportunity WHERE Name = 'Finance Corp - Deal-2025-002' LIMIT 1];
delete delOpp2;
System.debug('Opportunity 2 deleted (soft delete) → Id: ' + delOpp2.Id);

Opportunity delOpp3 = [SELECT Id FROM Opportunity WHERE Name = 'Healthcare Systems - Deal-2025-003' LIMIT 1];
delete delOpp3;
System.debug('Opportunity 3 deleted (soft delete) → Id: ' + delOpp3.Id);

// Delete Candidate 1, 2, 3

Candidate__c delCand1 = [SELECT Id FROM Candidate__c WHERE email__c = 'vikram.patel@example.com' LIMIT 1];
delete delCand1;
System.debug('Candidate 1 deleted (soft delete) → Id: ' + delCand1.Id);

Candidate__c delCand2 = [SELECT Id FROM Candidate__c WHERE email__c = 'sneha.verma@example.com' LIMIT 1];
delete delCand2;
System.debug('Candidate 2 deleted (soft delete) → Id: ' + delCand2.Id);

Candidate__c delCand3 = [SELECT Id FROM Candidate__c WHERE email__c = 'deepak.gupta@example.com' LIMIT 1];
delete delCand3;
System.debug('Candidate 3 deleted (soft delete) → Id: ' + delCand3.Id);
