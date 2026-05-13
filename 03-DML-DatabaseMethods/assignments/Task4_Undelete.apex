/*
 Task 4 – Record Restoration
    Undelete the records that were deleted in Task 3.
*/

// Restore Contact 1, 2, 3
Contact restoreContact1 =[
    SELECT Id, Isdeleted
    FROM Contact WHERE UniqueId__c = 'CON001' LIMIT 1 ALL ROWS
];
System.debug('Contact 1 before undelete → IsDeleted: ' + restoreContact1.IsDeleted);
undelete restoreContact1;
System.debug('Contact 1 undeleted → Id: ' + restoreContact1.Id);

Contact restoreContact2 =[
    SELECT Id, Isdeleted
    FROM Contact WHERE UniqueId__c = 'CON002' LIMIT 1 ALL ROWS
];
System.debug('Contact 2 before undelete → IsDeleted: ' + restoreContact2.IsDeleted);
undelete restoreContact2;
System.debug('Contact 2 undeleted  → Id: ' + restoreContact2.Id);

Contact restoreContact3 =[
    SELECT Id, Isdeleted
    FROM Contact WHERE UniqueId__c = 'CON003' LIMIT 1 ALL ROWS
];
System.debug('Contact 3 before undelete → IsDeleted: ' + restoreContact3.IsDeleted);
undelete restoreContact3;
System.debug('Contact 3 undeleted  → Id: ' + restoreContact3.Id); 

// undelete Account 1, 2, 3

Account restoreAcc1 = [SELECT Id, Isdeleted FROM Account WHERE Name = 'Tech Solutions Ltd' LIMIT 1 ALL ROWS];
System.debug('Account 1 before undelete → IsDeleted: ' + restoreAcc1.IsDeleted);
undelete restoreAcc1;
System.debug('Account 1 undeleted  → Id: ' + restoreAcc1.Id);

Account restoreAcc2 = [SELECT Id, Isdeleted FROM Account WHERE Name = 'Finance Corp' LIMIT 1 ALL ROWS];
System.debug('Account 2 before undelete → IsDeleted: ' + restoreAcc2.IsDeleted);
undelete restoreAcc2;
System.debug('Account 2 undeleted  → Id: ' + restoreAcc2.Id);

Account restoreAcc3 = [SELECT Id, Isdeleted FROM Account WHERE Name = 'Healthcare Systems' LIMIT 1 ALL ROWS];
System.debug('Account 3 before undelete → IsDeleted: ' + restoreAcc3.IsDeleted);
undelete restoreAcc3;
System.debug('Account 3 undeleted  → Id: ' + restoreAcc3.Id);

// undelete Opportunity 1, 2, 3

Opportunity restoreOpp1 = [SELECT Id, Isdeleted FROM Opportunity WHERE Name = 'Tech Solutions Ltd - Deal-2025-001' LIMIT 1 ALL ROWS];
System.debug('Opportunity 1 before undelete → IsDeleted: ' + restoreOpp1.IsDeleted);
undelete restoreOpp1;
System.debug('Opportunity 1 undeleted  → Id: ' + restoreOpp1.Id);

Opportunity restoreOpp2 = [SELECT Id, Isdeleted FROM Opportunity WHERE Name = 'Finance Corp - Deal-2025-002' LIMIT 1 ALL ROWS];
System.debug('Opportunity 2 before undelete → IsDeleted: ' + restoreOpp2.IsDeleted);
undelete restoreOpp2;
System.debug('Opportunity 2 undeleted  → Id: ' + restoreOpp2.Id);

Opportunity restoreOpp3 = [SELECT Id, Isdeleted FROM Opportunity WHERE Name = 'Healthcare Systems - Deal-2025-003' LIMIT 1 ALL ROWS];
System.debug('Opportunity 3 before undelete → IsDeleted: ' + restoreOpp3.IsDeleted);
undelete restoreOpp3;
System.debug('Opportunity 3 undeleted  → Id: ' + restoreOpp3.Id);

// undelete Candidate 1, 2, 3

Candidate__c restoreCand1 = [SELECT Id, Isdeleted FROM Candidate__c WHERE email__c = 'vikram.patel@example.com' LIMIT 1 ALL ROWS];
System.debug('Candidate 1 before undelete → IsDeleted: ' + restoreCand1.IsDeleted);
undelete restoreCand1;
System.debug('Candidate 1 undeleted  → Id: ' + restoreCand1.Id);

Candidate__c restoreCand2 = [SELECT Id, Isdeleted FROM Candidate__c WHERE email__c = 'sneha.verma@example.com' LIMIT 1 ALL ROWS];
System.debug('Candidate 2 before undelete → IsDeleted: ' + restoreCand2.IsDeleted);
undelete restoreCand2;
System.debug('Candidate 2 undeleted  → Id: ' + restoreCand2.Id);

Candidate__c restoreCand3 = [SELECT Id, Isdeleted FROM Candidate__c WHERE email__c = 'deepak.gupta@example.com' LIMIT 1 ALL ROWS];
System.debug('Candidate 3 before undelete → IsDeleted: ' + restoreCand3.IsDeleted);
undelete restoreCand3;
System.debug('Candidate 3 undeleted  → Id: ' + restoreCand3.Id);
