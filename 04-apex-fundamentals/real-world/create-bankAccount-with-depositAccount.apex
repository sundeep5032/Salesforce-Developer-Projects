//  Create a Bank Account record, and if successful, create a Deposit Account record associated with it.

Account acc = new Account(
    Name = 'Main Street Checking',
    Phone = '9023456783',
    Fax   = '9023456783',
    email__c = 'info@mainstreet.in'
);
insert acc;

if (acc.Id != null){
    // Creating a child record linked via Lookup/Master-Detail field
    Opportunity depositAcc = new Opportunity(
        Name = 'Initial Savings Deposit',
        AccountId = acc.Id,
        StageName = 'Prospecting',
        CloseDate = Date.today().addDays(30)
    );
    insert depositAcc;
}
