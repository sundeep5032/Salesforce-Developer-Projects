// 1. Create the parent Account record (The Client Entity)
Account bankAccount = new Account(
    Name     = 'Grand Trust Commercial',
    Phone    = '7586142121',
    Fax      = '7584562114',
    email__c = 'info1@grandtrust.in'
);

try {
    // 2. Insert the Account into the database
    insert bankAccount;
    System.debug('Successfully created Account. ID: ' + bankAccount.Id);

    // 3. Create a list to hold the 10 child Opportunity records
    List<Opportunity> opportunityList = new List<Opportunity>();

    // 4. Use a loop to generate 10 Opportunity records
    for (Integer i = 1; i <= 10; i++){
        Opportunity opp = new Opportunity(
            Name      = 'Grand Trust - Sales Deal # ' + i, // [Account Name] - [Deal Type]
            AccountId = bankAccount.Id,                    // Linking via standard relationship field
            StageName = 'Prospecting',                     // Standard required picklist field
            CloseDate = Date.today().addDays(30),          // Standard required date field
            Amount    = 1000 * i                           // Simulating different deal sizes
        );
        // Add each record to our list (holding them in memory)
        opportunityList.add(opp);
    }
    
    // 5. Insert all 10 records at once (Bulkified DML)
    if (!opportunityList.isEmpty()){
        insert opportunityList;
        System.debug('Successfully linked 10 Opportunity records to the Account.');
    }
} catch(DmlException e) {
    // Handle errors if the database insertion fails
    System.debug('An error occurred during creation: ' + e.getMessage());
}
