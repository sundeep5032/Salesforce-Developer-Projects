// 2. Create 10 Deposit Accounts using a loop.

List<DepositAccount__c> depositsToInsert = new List<DepositAccount__c>();

for(Integer i = 1; i<=10; i++){
    DepositAccount__c deposit = new DepositAccount__c(
        Name        = 'Bulk Deposit ' +i,
        bankId__c   = 'a09g5000004kjhOAAQ'
    );
    depositsToInsert.add(deposit);
}
insert depositsToInsert; // Best practice: DML outside the loop
