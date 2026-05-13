/*
 Task 2 – Record Update
    Update the previously created records with any valid field changes.
*/

// Update Contact 1
Contact updateContact1 = [
    SELECT Id, FirstName, LastName, Phone, Email
    FROM Contact WHERE uniqueId__c = 'CON001'
    LIMIT 1
];
updateContact1.Phone = '9999999999';
updateContact1.Email = 'rajesh.kumar.new@example.com';
updateContact1.LeadSource = 'Web';
update updateContact1;
System.debug('Contact 1 updated → ' + updateContact1.Id);

// Update Contact 2
Contact updateContact2 = [
    SELECT Id, FirstName, LastName, Phone, Email
    FROM Contact WHERE uniqueId__c = 'CON002'
    LIMIT 1
];
updateContact2.Phone = '8888888888';
updateContact2.Birthdate = Date.newInstance(1990, 5, 15);
updateContact2.LeadSource = 'Email';
update updateContact2;
System.debug('Contact 2 updated → ' + updateContact2.Id);

// Update Contact 3
Contact updateContact3 = [
    SELECT Id, FirstName, LastName, Phone, Email
    FROM Contact WHERE uniqueId__c = 'CON003'
    LIMIT 1
];
updateContact3.Phone = '7777777777';
updateContact3.Fax = '0120-1111111';
updateContact3.LeadSource = 'Phone Inquiry';
update updateContact3;
System.debug('Contact 3 updated → ' + updateContact3.Id);

// Update Account 1
Account updateAcc1 = [
    SELECT Id, Phone, Fax, Rating
    FROM Account WHERE Name = 'Tech Solutions Ltd' LIMIT 1
];
updateAcc1.Rating = 'Warm';
updateAcc1.Phone = '0120-9999999';
updateAcc1.Fax = '0120-9999998';
update updateAcc1;
System.debug('Account 1 updated → ' + updateAcc1.Id);

// Update Account 2
Account updateAcc2 = [
    SELECT Id, Phone, Rating
    FROM Account WHERE Name = 'Finance Corp' LIMIT 1
];
updateAcc2.Rating = 'Hot';
updateAcc2.Phone = '0120-8888888';
update updateAcc2;
System.debug('Account 2 updated → ' + updateAcc2.Id);

// Update Account 3
Account updateAcc3 = [
    SELECT Id, Phone, Rating
    FROM Account WHERE Name = 'Healthcare Systems' LIMIT 1
];
updateAcc3.Rating = 'Warm';
updateAcc3.Phone = '0120-7777777';
update updateAcc3;
System.debug('Account 3 updated → ' + updateAcc3.Id);

// Update Opportunity 1
Opportunity updateOpp1 = [
    SELECT Id, Name, StageName, Amount
    FROM Opportunity WHERE Name = 'Tech Solutions Ltd - Deal-2025-001' LIMIT 1
];
updateOpp1.StageName = 'Qualification';
updateOpp1.Amount = 600000;
update updateOpp1;
System.debug('Opportunity 1 updated → ' + updateOpp1.Id);

// Update Opportunity 2
Opportunity updateOpp2 = [
    SELECT Id, Name, StageName, Amount
    FROM Opportunity WHERE Name = 'Finance Corp - Deal-2025-002' LIMIT 1
];
updateOpp2.StageName = 'Qualification';
updateOpp2.Amount = 600000;
update updateOpp2;
System.debug('Opportunity 2 updated → ' + updateOpp2.Id);

// Update Opportunity 3
Opportunity updateOpp3 = [
    SELECT Id, Name, StageName, Amount
    FROM Opportunity WHERE Name = 'Healthcare Systems - Deal-2025-003' LIMIT 1
];
updateOpp3.StageName = 'Qualification';
updateOpp3.Amount = 600000;
update updateOpp3;
System.debug('Opportunity 3 updated → ' + updateOpp3.Id);

// Update Candidate 1
Candidate__c updateCand1 = [
    SELECT Id, email__c, skill__c, exp__c, status__c
    FROM Candidate__c WHERE email__c = 'vikram.patel@example.com' LIMIT 1
];
updateCand1.skill__c = 'Salesforce';
updateCand1.exp__c = 6;
updateCand1.status__c = 'Applied';
update updateCand1;
System.debug('Candidate 1 updated → ' + updateCand1.Id);

// Update Candidate 2
Candidate__c updateCand2 = [
    SELECT Id, email__c, skill__c, exp__c, status__c
    FROM Candidate__c WHERE email__c = 'sneha.verma@example.com' LIMIT 1
];
updateCand2.skill__c = 'Java';
updateCand2.exp__c = 4;
updateCand2.status__c = 'Applied';
update updateCand2;
System.debug('Candidate 2 updated → ' + updateCand2.Id);

// Update Candidate 3
Candidate__c updateCand3 = [
    SELECT Id, Name, email__c, skill__c, exp__c, status__c
    FROM Candidate__c WHERE email__c = 'deepak.gupta@example.com' LIMIT 1
];
updateCand3.skill__c = 'DevOps';
updateCand3.exp__c = 5;
updateCand3.status__c = 'Applied';
update updateCand3;
System.debug('Candidate 3 updated → ' + updateCand3.Id);
