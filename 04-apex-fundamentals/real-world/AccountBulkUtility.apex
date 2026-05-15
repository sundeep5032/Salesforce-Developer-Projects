// 2. Create 10 Account records using a loop.

List<Account> accountsToInsert = new List<Account>();

for(Integer i = 1; i <= 10; i++){
    accountsToInsert.add(new Account(
        Name     = 'Bulk Account ' + i,
        Phone    = '902345678' + i,
        Fax      = '902345678' + i,
        email__c = 'info' + i + '@bulkaccount.in' // Dynamically creates unique emails like info1@..., info2@...
    ));
}

// Best practice: DML outside the loop to avoid hitting governor limits
insert accountsToInsert;
