/*
SECTION 6: SOBJECT Variables & Custom Labels
--------------------------------------------
Primitive vs SObject
--------------------
*/
Integer x; // Primitive declaration
Account acc; //SObject declaration
// At this stage both variables are only declared (not initialized).
// Primitives and SObjects both default to null until assigned.
System.debug('x (declared) → ' + x);
System.debug('acc (declared) → ' + acc);
x = 10; //Assign primitive value
acc = new Account(); // Create an empty Account sObject (no field values yet)
System.debug('x (assigned) → ' + x);
System.debug('acc (initialized, no field data) → ' + acc);
//Assign field values
acc.Name = 'Tupperware Ltd';
acc.Phone = '04055774433';
acc.Fax = '04055774433';
acc.email__c = 'info@tupperware.in';
acc.NumberOfEmployees = 4000;
acc.AccountNumber = 'TUP3344';
acc.uniqueId__c = 'TUP3344';
System.debug('acc (initialized, with field data) → ' + acc);

/*
Different ways of using SObject Variable
----------------------------------------
*/
// Step-by-step
Student__c s1= new Student__c();
s1.Name = 'Rajesh';
s1.mobile__c = '365363';
s1.email__c = 'rajesh@gmail.com';
System.debug('Student 1 → '+ s1);
// Inline initialization
Student__c s2 = new Student__c(
    Name = 'Keerthi',mobile__c = '5624586984',email__c = 'keerthi@gmail.com'
);
System.debug('Student 2 → '+ s2);
// Direct inside debug
System.debug('Student 3 → '+ new Student__c(
    Name = 'Joshua',mobile__c = '9785461537',email__c = 'joshua@gmail.com'
));
/*
Different Scenarios
-------------------
*/
// Normal
Opportunity o1 = new Opportunity(
    Name = 'Order-001', StageName = 'Prospecting', CloseDate = Date.today().addDays(3)
);
System.debug('Opportunity 1 → '+ o1);

// With a different Owner (Martin Melkov - 005g5000005kYAJAA2)
Opportunity o2 = new Opportunity(
    Name = 'Order-002', StageName = 'Prospecting',
    CloseDate = Date.today().addDays(4), OwnerId = '005g5000005kYAJAA2'
);
System.debug('Opportunity 2 → '+ o2);

//With a different Record Type (Martin Melkov - 005g5000005kYAJAA2, Sales Order - a03g500000FxCxiAAF)
Opportunity o3 = new Opportunity(
    Name = 'Order-003', StageName = 'Perception', CloseDate = Date.today().addDays(5), 
    OwnerId = '005g5000005kYAJAA2', RecordTypeId = 'a03g500000FxCxiAAF'
);
System.debug('Opportunity 3 → '+ o3);

// With a different Record Type (Martin Melkov - 005g5000005kYAJAA2, Sales Order - a03g500000FxCxiAAF, related to Account Edge Communications Account(001g500000HnXU5AAN))
Opportunity o4 = new Opportunity(
    Name = 'Order-004', StageName = 'Perception Analysis', CloseDate = Date.today().addDays(6), 
    OwnerId = '005g5000005kYAJAA2', RecordTypeId = 'a03g500000FxCxiAAF', AccountId = '001g500000HnXU5AAN'
);
System.debug('Opportunity 4 → '+ o4);
/*
⚠️ Best Practice: Avoid Hardcoding Record IDs
Hardcoding IDs makes code:
• Environment dependent (Dev, UAT, Prod IDs differ)
• Difficult to maintain
• Risky during deployments

✅ Instead, store them in Custom Labels.

Create the following Custom Labels(replace the values with the values from your org.):
Short Description                 | Name                  | Value
---------------------------------------------------------------------------
Martin Melkov User Id             | martinId              | 005g5000005kYAJAA2
Sales Order Record Type Id        | salesOrderRecTypeId   | a03g500000FxCxiAAF
Edge Communications Account Id    | EdgeCommunicationsId  | 001g500000HnXU5AAN

Why Custom Labels?
✔ Avoid hardcoded IDs in Apex
✔ Environment independent (works across Dev, UAT, Prod)
✔ Easy to update without modifying code
✔ Deployment friendly and maintainable
NOTE: Please replace the values with your org record Id's
*/
Opportunity o5 = new Opportunity(
    Name = 'Order-005', StageName = 'Perception Analysis', CloseDate = Date.today().addDays(7), 
    OwnerId = Label.martinId, RecordTypeId = Label.salesOrderRecTypeId, AccountId = Label.EdgeCommunicationsId
);
System.debug('Opportunity 5 → '+ o5);
