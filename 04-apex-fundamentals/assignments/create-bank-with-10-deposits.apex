//  Create a Bank Account, and if successful, create 10 Deposit Accounts linked to it.

// 1. Create the parent Bank Account record

Account bankAccount = new Account(
    Name    = 'Grand Trust Checking - '+ DateTime.now().getTime(),
    Phone   = '7586145236',
    Fax     = '7584562114',
    email__c= 'info@grandtrust.in'
);

try{
    // 2. Insert the Bank Account into the database
    insert bankAccount;
    System.debug('Successfully created Bank Account. ID: ' + bankAccount.Id);

    // 3. Create a list to hold the 10 child Deposit Accounts (Opportunities)
    List<Opportunity> depositAccounts = new List<Opportunity>();

    // 4. Use a loop to generate 10 deposit records
    for (Integer i = 1; i <= 10; i++){
        Opportunity deposit = new Opportunity(
            Name        = 'Depost Account # ' +i,
            AccountId   = bankAccount.Id, // Linking the child to the parent ID
            StageName   = 'Prospecting',
            CloseDate   = Date.today().addDays(30),
            Amount      = 1000 * i // Simulating different balances
        );
        // Add each record to our list (holding them in memory)
        depositAccounts.add(deposit);
    }
    // 5. Insert all 10 records at once (Bulkified DML)
    if (!depositAccounts.isEmpty()){
        insert depositAccounts;
        System.debug('Successfully linked 10 Deposit Accounts to the Bank Account.');
    }
}catch(DmlException e){
    // Handle errors if the database insertion fails
    System.debug('An error occurred during creation: ' + e.getMessage());
}
