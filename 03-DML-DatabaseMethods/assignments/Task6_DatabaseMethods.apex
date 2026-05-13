/*
Task 6 – Database Method Implementation
    Repeat Tasks 1 through 5 using Database methods 
    Database.insert, Database.update, Database.delete, Database.undelete, Database.upsert
    and log the operation results appropriately.
*/
// ════════════════════════════════════════════════════════════
// 6A: DATABASE.INSERT
// ════════════════════════════════════════════════════════════
Contact dbContact1 = new Contact(
    FirstName   = 'Arjun',
    LastName    = 'Patel',
    Phone       = '9111111111',
    Email       = 'arjun.patel@example.com',
    UniqueId__c = 'DB_CON_001'
);

Contact dbContact2 = new Contact(
    FirstName   = 'Neha',
    LastName    = 'Kapoor',
    Phone       = '9222222222',
    Email       = 'neha.kapoor@example.com',
    UniqueId__c = 'DB_CON_002'
);

Database.SaveResult srContact1 = Database.insert(dbContact1, false);
if (srContact1.isSuccess()) {
    System.debug('Contact 1 INSERT success → Id: ' +srContact1.getId());
} else {
    System.debug('Contact 1 INSERT Failed → Errors: ' +srContact1.getErrors());
}

Database.SaveResult srContact2 = Database.insert(dbContact2, false);
if (srContact2.isSuccess()) {
    System.debug('Contact 2 INSERT success → Id: ' +srContact2.getId());
} else {
    System.debug('Contact 2 INSERT Failed → Errors: ' +srContact2.getErrors());
}

// ════════════════════════════════════════════════════════════
// 6B: DATABASE.UPDATE
// ════════════════════════════════════════════════════════════

Contact dbUpdateContact1 = [
    SELECT Id, FirstName, Phone, Email
    FROM Contact WHERE UniqueId__c = 'DB_CON_001' LIMIT 1
];
dbUpdateContact1.Phone = '9111111110';
dbUpdateContact1.Email = 'arjun.patel.updated@example.com';

Contact dbUpdateContact2 = [
    SELECT Id, FirstName, Phone, LeadSource
    FROM Contact WHERE UniqueId__c = 'DB_CON_002' LIMIT 1
];
dbUpdateContact2.Phone = '9222222220';
dbUpdateContact2.LeadSource = 'Phone Inquiry';

Database.SaveResult srUpdateContact1 = Database.update(dbUpdateContact1, false);
if (srUpdateContact1.isSuccess()) {
    System.debug('Contact 1 UPDATE success → Id: ' + srUpdateContact1.getId());
} else {
    System.debug('Contact 1 UPDATE failed → Errors: ' + srUpdateContact1.getErrors());
}

Database.SaveResult srUpdateContact2 = Database.update(dbUpdateContact2, false);
if (srUpdateContact2.isSuccess()) {
    System.debug('Contact 2 UPDATE success → Id: ' + srUpdateContact2.getId());
} else {
    System.debug('Contact 2 UPDATE failed → Errors: ' + srUpdateContact2.getErrors());
}

// ════════════════════════════════════════════════════════════
// 6C: DATABASE.DELETE
// ════════════════════════════════════════════════════════════

Contact dbDelContact1 =[SELECT Id FROM Contact WHERE UniqueId__c = 'DB_CON_001' LIMIT 1];
Contact dbDelContact2 =[SELECT Id FROM Contact WHERE UniqueId__c = 'DB_CON_002' LIMIT 1];

Database.DeleteResult drContact1 = Database.delete(dbDelContact1, false);
if (drContact1.isSuccess()) {
    System.debug('Contact 1 DELETE success → Id: ' + drContact1.getId());
} else {
    System.debug('Contact 1 DELETE failed → Errors: ' + drContact1.getErrors());
}

Database.DeleteResult drContact2 = Database.delete(dbDelContact2, false);
if (drContact2.isSuccess()) {
    System.debug('Contact 2 DELETE success → Id: ' + drContact2.getId());
} else {
    System.debug('Contact 2 DELETE failed → Errors: ' + drContact2.getErrors());
}

// ════════════════════════════════════════════════════════════
// 6D: DATABASE.UNDELETE
// ════════════════════════════════════════════════════════════

Contact dbUndContact1 =[SELECT Id, IsDeleted FROM Contact WHERE UniqueId__c = 'DB_CON_001' LIMIT 1 ALL ROWS];
Contact dbUndContact2 =[SELECT Id, IsDeleted FROM Contact WHERE UniqueId__c = 'DB_CON_002' LIMIT 1 ALL ROWS];

Database.UndeleteResult udrContact1 = Database.undelete(dbUndContact1, false);
if (udrContact1.isSuccess()) {
    System.debug('Contact 1 UNDELETE success → Id: ' + udrContact1.getId());
} else {
    System.debug('Contact 1 UNDELETE failed → Errors: ' + udrContact1.getErrors());
}

Database.UndeleteResult udrContact2 = Database.undelete(dbUndContact2, false);
if (udrContact2.isSuccess()) {
    System.debug('Contact 2 UNDELETE success → Id: ' + udrContact2.getId());
} else {
    System.debug('Contact 2 UNDELETE failed → Errors: ' + udrContact2.getErrors());
}

// ════════════════════════════════════════════════════════════
// 6E: DATABASE.UPSERT
// ════════════════════════════════════════════════════════════

Candidate__c dbUpsertCand1 = new Candidate__c(
    Name      = 'Karan Singh',
    email__c  = 'karan.singh@example.com',
    skill__c  = 'Devops',
    exp__c    = 4,
    status__c = 'Applied'
);

Candidate__c dbUpsertCand2 = new Candidate__c(
    Name      = 'Vikram Kumar Updated',
    email__c  = 'vikram.patel@example.com',
    skill__c  = 'Salesforce',
    exp__c    = 8,
    status__c = 'Applied'
);

Database.UpsertResult urCand1 = Database.upsert(dbUpsertCand1, Candidate__c.Fields.email__c, false);
if (urCand1.isSuccess()) {
    System.debug('Candidate 1 UPSERT → Id: ' + urCand1.getId() + ', Created: ' + urCand1.isCreated());
} else {
    System.debug('Candidate 1 UPSERT failed → Errors: ' + urCand1.getErrors());
}

Database.UpsertResult urCand2 = Database.upsert(dbUpsertCand2, Candidate__c.Fields.email__c, false);
if (urCand2.isSuccess()) {
    System.debug('Candidate 2 UPSERT → Id: ' + urCand2.getId() + ', Created: ' + urCand2.isCreated());
} else {
    System.debug('Candidate 2 UPSERT failed → Errors: ' + urCand2.getErrors());
}
