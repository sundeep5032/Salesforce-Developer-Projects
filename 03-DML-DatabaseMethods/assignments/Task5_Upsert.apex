/*
Task 5 – Upsert Using External ID
    Identify an External ID field on each object and:
    Create two sObject records
*/

// Contact Upsert
Contact upsertContact1 = new Contact(
    FirstName   = 'Mohit',
    LastName    = 'Sharma',
    Phone       = '9123456789',
    Email       = 'mohit.sharma@example.com',
    UniqueId__c = 'UPSERT_CON_001'  // NEW
);
Contact upsertContact2 = new Contact(
    FirstName   = 'Rajesh',
    LastName    = 'Singh',
    Phone       = '9000000000',
    Email       = 'rajesh.singh@example.com',
    UniqueId__c = 'CON001'  // UPDATE EXISTING
);

upsert upsertContact1 Contact.UniqueId__c;
System.debug('Contact upsert 1 (INSERT) → Id: ' + upsertContact1.Id);

upsert upsertContact2 Contact.UniqueId__c;
System.debug('Contact upsert 2 (Update) → Id: ' + upsertContact2.Id);

// Candidate Upsert

Candidate__c upserCand1 = new Candidate__c(
    Name      = 'Nitin Menon',
    email__c  = 'nitin.menon@example.com',
    skill__c  = 'Devops',
    exp__c    = 3,
    status__c = 'Applied'
);
Candidate__c upsertCand2 = new Candidate__c(
    Name      = 'Vikram Kumar',
    email__c  = 'vikram.patel@example.com',  // EXISTING
    skill__c  = 'Salesforce',
    exp__c    = 7,
    status__c = 'Applied'
);

upsert upserCand1 Candidate__c.Fields.email__c;
System.debug('Candidate upsert 1 (INSERT) → Id: ' + upserCand1.Id);
upsert upsertCand2 Candidate__c.Fields.email__c;
System.debug('Candidate upsert 2 (updated) → Id: ' + upsertCand2.Id);
