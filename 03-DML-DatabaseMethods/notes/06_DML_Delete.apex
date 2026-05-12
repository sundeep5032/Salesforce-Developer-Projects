/*
f) CONTACT DELETE (SOFT DELETE)
-------------------------------
*/

Contact delC = [
    SELECT Id
    FROM Contact
    WHERE UniqueId__c = 'JSH4455'
    LIMIT 1
];
// Delete soft-deletes the record (moves to Recycle Bin)
delete delC;

System.debug('Contact soft-deleted → ' + delC.Id);
