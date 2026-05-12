/*
d) CONTACT UPSERT (INSERT OR UPDATE)
------------------------------------
*/
// Match records using custom External ID field: UniqueId__c
// If record exists → update
// If not → insert new record
Contact upsertC1 = new Contact(
    UniqueId__c = 'JSH4455', LastName = 'Kumar'
);// should UPDATE existing
Contact upsertC2 = new Contact(
    UniqueId__c = 'HRX8767', FirstName = 'Hrithik', LastName = 'Roshan'
); // should INSERT new
upsert upsertC1 UniqueId__c;
upsert upsertC2 uniqueId__c;
System.debug('Upsert done for upsertC1 and upsertC2');
