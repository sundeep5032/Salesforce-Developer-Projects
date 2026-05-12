/*
📘 • DML STATEMENTS • DATABASE METHODS
=======================================
🔹 SECTION 1: DML Statements (Contact CRUD)
----------------------------------------
a) CONTACT CREATION (INSERT)
----------------------------
*/

Contact createC = new Contact();  // Empty Contact sObject
System.debug('createC (empty) → ' + createC);
// Assign field values
createC.FirstName = 'Jithendra';
createC.LastName = 'Shetty';
createC.Phone = '8764587998';
createC.Birthdate = Date.newInstance(1994, 02, 21);
createC.uniqueId__c = 'JSH4455'; // Custom External Id field (recommended for upserts)
System.debug('createC (before insert) → ' + createC);

insert createC;  // Insert Contact record
System.debug('createC (after insert, Id populated) → ' + createC);
