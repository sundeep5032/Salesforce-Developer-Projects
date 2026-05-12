/*
b) CONTACT READ (SOQL)
-----------------------
*/

Contact readC = [
    SELECT Id, FirstName, LastName, Phone, Fax, Email, LeadSource, Birthdate, uniqueId__c 
    FROM Contact
    WHERE uniqueId__c = 'JSH4455' LIMIT 1
];
// NOTE: If no records are found you get the following exception
// System.QueryException: List has no rows for assignment to SObject
System.debug('Contact (readC) → \n' + JSON.serializePretty(readC));
System.debug('FirstName  → ' + readC.FirstName);
System.debug('LastName   → ' + readC.LastName);
System.debug('Phone      → ' + readC.Phone);
System.debug('Fax        → ' + readC.Fax);
System.debug('Email      → ' + readC.Email);
System.debug('LeadSource → ' + readC.LeadSource);
System.debug('Birthdate  → ' + readC.Birthdate);
// System.debug('Title  → ' + readC.Title);
// System.SObjectException: SObject row was retrieved via SOQL 
// without querying the requested field: Contact.Title
