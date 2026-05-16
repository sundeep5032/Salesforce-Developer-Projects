/*
2D – Working with DepositAccount__c
---------------------------------------
1. Insert 5 deposit accounts.
2. Query them and create a cloned list.
*/
// ============================================================================
// TASK 2D: WORKING WITH DEPOSITACCOUNT__C
// ============================================================================

System.debug('--- START:  Deposit Account Mirroring ---');

// 1. Insert 5 deposit accounts
List<DepositAccount__c > initialDeposits = new List<DepositAccount__c >();
for (Integer i = 1; i <= 5; i++) {
    initialDeposits.add(new DepositAccount__c (
        Name = 'Deposit Certificate #' + i,
        bankId__c  ='a09g5000004my9FAAQ'
    ));
}
insert initialDeposits;

// 2. Query them and create a cloned list
List<DepositAccount__c > queriedDeposits = [SELECT Id, Name FROM DepositAccount__c ];
List<DepositAccount__c > clonedDepositsBackup = queriedDeposits.clone();

// Verification tracking check
System.debug('Original List Records Count: ' + queriedDeposits.size());
System.debug('Cloned Backup Records Count: ' + clonedDepositsBackup.size());
System.debug('Verification Match: ' + (queriedDeposits.size() == clonedDepositsBackup.size()));

System.debug('--- END: Deposit Account Mirroring ---');
