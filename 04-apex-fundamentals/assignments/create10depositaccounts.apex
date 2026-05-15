// 2. Create 10 Deposit Accounts using a loop.

List<Opportunity> depositsToInsert = new List<Opportunity>();

for(Integer i = 1; i<=10; i++){
    depositsToInsert.add(new Opportunity(
        Name        = 'Bulk Deposit ' +i,
        StageName   = 'Prospecting',
        CloseDate   = Date.today()
    ));
}
insert depositsToInsert; // Best practice: DML outside the loop
