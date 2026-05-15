//  Create a Bank Account, and if successful, create 10 Deposit Accounts linked to it.

// 1. Create the parent Bank Account record

BankAccount__c bankAccount = new BankAccount__c(
    Name    = 'Grand Trust Checking - '+ DateTime.now().getTime()
);

try{
    // 2. Insert the Bank Account into the database
    insert bankAccount;
    System.debug('Successfully created Bank Account. ID: ' + bankAccount.Id);

    // 3. Create a list to hold the 10 child Deposit Accounts (DepositAccount__cies)
    List<DepositAccount__c> depositAccounts = new List<DepositAccount__c>();

    // 4. Use a loop to generate 10 deposit records
    for (Integer i = 1; i <= 10; i++){
        DepositAccount__c deposit = new DepositAccount__c(
            Name        = 'Depost Account # ' +i,
            bankId__c   = bankAccount.Id, // Linking the child to the parent ID
            amount__c      = 1000 * i // Simulating different balances
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
