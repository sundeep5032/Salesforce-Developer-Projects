// 1. Create the Account record (The Company or Client)
Account acc = new Account(
    Name     = 'Acme Corporation', // Proper company name
    Phone    = '9023456783',
    Fax      = '9023456783',
    email__c = 'info@acme.com'
);
insert acc;

// 2. If successful, create the associated Opportunity record (The Sales Deal)
if (acc.Id != null){
    Opportunity opp = new Opportunity(
        Name      = 'Acme Corp - Enterprise Software Renewal', // Proper deal name ([Account Name] - [Product/Deal Type])
        AccountId = acc.Id,                                   // Standard lookup field to Account
        StageName = 'Prospecting',                            // Standard Opportunity picklist value
        CloseDate = Date.today().addDays(30)                  // Target closing date
    );
    insert opp;
}
