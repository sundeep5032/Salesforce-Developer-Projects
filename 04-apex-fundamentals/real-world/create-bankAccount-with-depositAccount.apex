//  Create a Bank Account record, and if successful, create a Deposit Account record associated with it.

BankAccount__c acc = new BankAccount__c(
    Name = 'Main Street Enterprises Ltd' // Clear business entity name 
);
insert acc;

if (acc.Id != null){
    // Creating a child record linked via Lookup/Master-Detail field
    DepositAccount__c depositAcc = new DepositAccount__c(
        Name = 'Initial Savings Deposit',
        bankId__c = acc.Id
    );
    insert depositAcc;
}
