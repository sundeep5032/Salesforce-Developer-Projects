/*
2C – Working with BankAccount__c
------------------------------------
1. Create 5 BankAccount__c records with random amount__c values.
2. Query them into a List.
3. Double each balance (simulate an interest calculation) using either:
4. A for loop with set(index, value)
5. A temporary list.
6. Sort the list by amount.
7. Print highest and lowest amount using index positions.
*/

System.debug('--- START: Financial Calculations ---');

// Create 5 BankAccount__c records with random amount__c values.
List<BankAccount__c> freshAccounts = new List<BankAccount__c>{
    new BankAccount__c(Name = 'Fresh Account 1', amount__c = 150.00),
    new BankAccount__c(Name = 'Fresh Account 2', amount__c = 4300.50),
    new BankAccount__c(Name = 'Fresh Account 3', amount__c = 25.10),
    new BankAccount__c(Name = 'Fresh Account 4', amount__c = 9100.00),
    new BankAccount__c(Name = 'Fresh Account 5', amount__c = 620.75)
};
insert freshAccounts;

// Query them into a List.
List<BankAccount__c> activePortfolios = [
    SELECT Id, amount__c FROM BankAccount__c WHERE amount__c != null AND CreatedDate = TODAY  
];

// 3. Double each balance using a for loop with set(index, value)
Integer loopIndex =0;
for(BankAccount__c account: activePortfolios){
    //Apply transformation logic (simulating interest calculation)
    account.amount__c = account.amount__c *2;

    // Using set(index, value) to update the original list directly
    activePortfolios.set(loopIndex, account);
    loopIndex++;
}
// Save the updated financial records back to the database
update activePortfolios;

// 6. Sort the balances by amount (extract balances to a sorting primitive list)
List<Decimal> balanceList = new List<Decimal>();
for (BankAccount__c account : activePortfolios) {
    balanceList.add(account.amount__c);
}
balanceList.sort();

// 7. Print highest and lowest amount using index positions
Decimal lowestAmount = balanceList.get(0);
Decimal highestAmount = balanceList.get(balanceList.size() - 1);

System.debug('Financial Telemetry - Lowest Transformed Balance: $' + lowestAmount);
System.debug('Financial Telemetry - Highest Transformed Balance: $' + highestAmount);

System.debug('--- END: Financial Calculations ---');
