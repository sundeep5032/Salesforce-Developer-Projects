/*
🧪 Task 1 – Record Creation
    Create three records for each object that was created during the session.
*/

// Contact 1
Contact contact1 = new Contact(
    FirstName   = 'Rajesh',
    LastName    = 'Kumar',
    Phone       = '9876543210',
    Email       = 'rajesh.kumar@example.com',
    UniqueId__c = 'CON001'
);

insert contact1;
System.debug('Contact 1 inserted              → Id: ' + contact1.Id);

// Contact 2
Contact contact2 = new Contact(
    FirstName   = 'Priya',
    LastName    = 'Sharma',
    Phone       = '8765432109',
    Email       = 'priya.sharma@example.com',
    UniqueId__c = 'CON002'
);

insert contact2;
System.debug('Contact 2 inserted              → Id: ' + contact2.Id);

// Contact 3
Contact contact3 = new Contact(
    FirstName   = 'Arun',
    LastName    = 'Singh',
    Phone       = '7654321098',
    Email       = 'arun.singh@example.com',
    UniqueId__c = 'CON003'
);

insert contact3;
System.debug('Contact 3 inserted              → Id: ' + contact3.Id);

// Account 1
Account acc1 = new Account(
     Name            = 'Tech Solutions Ltd',
    Phone           = '0120-1234567',
    Fax             = '0120-1234567',
    Industry        = 'Technology',
    Rating          = 'Hot',
    NumberOfEmployees = 500,
    email__c           = 'info@techsolution.net'
);

insert acc1;
System.debug('Account 1 inserted → Id: ' + acc1.Id);

// Account 2
Account acc2 = new Account(
    Name            = 'Finance Corp',
    Phone           = '0120-2345678',
    Fax             = '0120-2345678',
    Industry        = 'Finance',
    Rating          = 'Warm',
    NumberOfEmployees = 200,
    email__c           ='info@financecorp.net'
);
insert acc2;
System.debug('Account 2 inserted → Id: ' + acc2.Id);

// Account 3
Account acc3 = new Account(
    Name            = 'Healthcare Systems',
    Phone           = '0120-3456789',
    Fax             = '0120-3456789',
    Industry        = 'Healthcare',
    Rating          = 'Cold',
    NumberOfEmployees = 1000,
    email__c           ='info@healthcaresystems.net'
);
insert acc3;
System.debug('Account 3 inserted → Id: ' + acc3.Id);

// Opportunity 1
Opportunity opp1 = new Opportunity(
    Name      = 'Deal-2025-001',
    StageName = 'Prospecting',
    CloseDate = Date.today().addDays(30),
    Amount    = 500000,
    AccountId = acc1.Id
);
insert opp1;
System.debug('Opportunity 1 inserted → Id: ' + opp1.Id);

// Opportunity 2
Opportunity opp2 = new Opportunity(
    Name      = 'Deal-2025-002',
    StageName = 'Negotiation/Review',
    CloseDate = Date.today().addDays(45),
    Amount    = 750000,
    AccountId = acc2.Id
);
insert opp2;
System.debug('Opportunity 2 inserted → Id: ' + opp2.Id);

// Opportunity 3
Opportunity opp3 = new Opportunity(
    Name      = 'Deal-2025-003',
    StageName = 'Negotiation/Review',
    CloseDate = Date.today().addDays(15),
    Amount    = 10000,
    AccountId = acc3.Id
);
insert opp3;
System.debug('Opportunity 3 inserted → Id: ' + opp3.Id);

// Candidate 1
Candidate__c cand1 = new Candidate__c(
    Name      = 'Vikram Patel',
    email__c  = 'vikram.patel@example.com',
    skill__c  = 'Salesforce',
    exp__c    = 5,
    status__c = 'Applied'
);
insert cand1;
System.debug('Candidate 1 inserted → Id: ' + cand1.Id);

// Candidate 2
Candidate__c cand2 = new Candidate__c(
    Name      = 'Sneha Verma',
    email__c  = 'sneha.verma@example.com',
    skill__c  = 'Java',
    exp__c    = 3,
    status__c = 'Applied'
);
insert cand2;
System.debug('Candidate 2 inserted → Id: ' + cand2.Id);

// Candidate 3
Candidate__c cand3 = new Candidate__c(
    Name      = 'Deepak Gupta',
    email__c  = 'deepak.gupta@example.com',
    skill__c  = 'DevOps',
    exp__c    = 4,
    status__c = 'Applied'
);
insert cand3;
System.debug('Candidate 3 inserted → Id: ' + cand3.Id);
