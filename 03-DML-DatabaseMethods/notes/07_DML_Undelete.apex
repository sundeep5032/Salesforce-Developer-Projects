/* CONTACT UNDELETE (RECOVERY)
------------------------------
*/
// Restore using undelete + ALL ROWS
Contact deletedRow = [
    SELECT Id, IsDeleted
    FROM Contact WHERE UniqueId__c = 'JSH4455'
    LIMIT 1 ALL ROWS
];
System.debug('Before undelete → Id=' + deletedRow.Id + ', IsDeleted=' + deletedRow.IsDeleted);
undelete deletedRow;
Contact restored = [
    SELECT Id, IsDeleted
    FROM Contact WHERE UniqueId__c = 'JSH4455'
    LIMIT 1 ALL ROWS
];
System.debug('After undelete → Id=' + restored.Id + ', IsDeleted=' + restored.IsDeleted);
