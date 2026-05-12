/*
📘 Topic 5: SObjects
------------------------
Create an Account variable with: Name, Phone, Industry, Rating and Print it.
Create an Contact variable with: FirstName, LastName, Email, Phone Assign AccountId using a dummy Id (store it in a variable first).
Print the Contact..
Create an Opportunity variable with: Name, StageName, CloseDate, Amount. Print only the Amount field.
Store an Account inside Object type, convert it back to Account type and print the name of the account.
Do the same with all the objects available in the system.
Student__c, Candidate__c, BankAccount__c, DepositAccount__c, LoanAccount__c, RequestForm, Transaction__c, TxnLineItem__c, etc.
*/

// Account
Account myAccount = new Account(
    Name = 'Tech Innovators Pvt Ltd',
    Phone = '04066778899',
    Industry = 'Technology',
    Rating = 'Hot'
);
System.debug('Account → ' + myAccount);

// Contact
Id accountId = '001g500000KiRAfAAN';
Contact myContact = new Contact(
    FirstName = 'Ravi',
    LastName = 'Teja',
    Email = 'ravi.teja@techinnovators.com',
    Phone= '9876543210',
    AccountId = accountId
);
System.debug('Contact → ' + myContact);

// Opportunity - print only Amount
Opportunity myOpportunity = new Opportunity(
    Name = 'Deal-2025',
    StageName = 'Prospecting',
    CloseDate = Date.today().addDays(30),
    Amount    = 500000
);
System.debug('Opportunity Amount → ' + myOpportunity.Amount);

// Account stored in Object → cast back → print Name
Object myObj = new Account(
    Name     = 'Generic Corp',
    Phone    = '1234567890',
    Industry = 'Finance'
);
Account castedAccount = (Account)myObj;
System.debug('Account Name → ' + castedAccount.Name);

// Student__c
Object studentObj = new Student__c(
    Name      = 'Akhil Reddy',
    mobile__c = '9001122334',
    email__c  = 'akhil@example.com'
);
Student__c myStudent = (Student__c)studentObj;
System.debug('Student Name → ' + myStudent.Name);

// Candidate__c
Object candidateObj = new Candidate__c(
    Name = 'Priya Sharma'
);
Candidate__c myCandidate = (Candidate__c)candidateObj;
System.debug('Candidate Name → ' + myCandidate.Name);

// BankAccount__c
Object bankAccountObj = new BankAccount__c(
    Name = 'Savings-001'
);
BankAccount__c myBankAccount = (BankAccount__c)bankAccountObj;
System.debug('BankAccount Name → ' + myBankAccount.Name);

// DepositAccount__c
Object depositAccountObj = new DepositAccount__c(
    Name = 'FD-2025'
);
DepositAccount__c myDepositAccount = (DepositAccount__c)depositAccountObj;
System.debug('DepositAccount Name → ' + myDepositAccount.Name);

// LoanAccount__c
Object loanAccountObj = new LoanAccount__c(
    Name = 'HomeLoan-001'
);
LoanAccount__c myLoanAccount = (LoanAccount__c)loanAccountObj;
System.debug('LoanAccount Name → ' + myLoanAccount.Name);

// RequestForm__c
/*
Object requestFormObj = new RequestForm__c(
    Name = 'REQ-001'
);
RequestForm__c myRequestForm = (RequestForm__c)requestFormObj;
System.debug('RequestForm Name → ' + myRequestForm.Name);

// Transaction__c
Object transactionObj = new Transaction__c(
    Name = 'TXN-0001'
);
Transaction__c myTransaction = (Transaction__c)transactionObj;
System.debug('Transaction Name → ' + myTransaction.Name);

// TxnLineItem__c
Object txnLineItemObj = new TxnLineItem__c(
    Name = 'LINE-001'
);
TxnLineItem__c myTxnLineItem = (TxnLineItem__c)txnLineItemObj;
System.debug('TxnLineItem Name → ' + myTxnLineItem.Name);
*/


// Note: Name field is auto-generated (autonumber) in this object,
//       it cannot be assigned manually. Leave it empty or use
//       other writable fields available in your org.
