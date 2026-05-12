/*
CONTACT MERGE (MERGE DML)
-----------------------------

MERGE behavior (for supported objects like Contact/Lead/Account):
- You choose a "master" record and one or more "duplicate" records.
- Salesforce merges field values + related lists (based on rules),
  deletes the duplicate record(s) (soft delete), and keeps the master.
- You can optionally override field values on the master before merge.
- Note: This will not copy the data of duplicate into the master only brings
    related records.
*/
//Get the two records you want to merge.

Contact mergeC1 = [
    SELECT Id, FirstName, LastName, Phone, Email
    FROM Contact WHERE UniqueId__c = 'HRX8767'
    LIMIT 1
];
Contact mergeC2 = [
    SELECT Id, FirstName, LastName, Phone, Email
    FROM Contact WHERE UniqueId__c = 'HRX8768'
    LIMIT 1
];
// Optional: set preferred values on master BEFORE merge
// You have to manually update the master record with dup field values if required
mergeC1.Phone = mergeC2.Phone;
mergeC1.Email = mergeC2.Email;
update mergeC1;
// Merge mergeC2 into mergeC1 (mergeC2 will be soft-deleted)
merge mergeC1 mergeC2;
