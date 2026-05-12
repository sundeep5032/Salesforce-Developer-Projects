/*
c) CONTACT UPDATE (UPDATE)
--------------------------
*/

Contact updateC = [
    SELECT Id, FirstName, LastName, Phone
    FROM Contact
    WHERE uniqueId__c = 'JSH4455' LIMIT 1
];
System.debug('Contact Before updated (Before up) → ' + updateC);
// Modify fields
updateC.Email = updateC.FirstName + '.' + updateC.LastName + '@ymal.com';
updateC.LeadSource = 'Web';
updateC.Fax = updateC.Phone;
updateC.Birthdate = Date.newInstance(1992, 03, 22);
// Updated in DB
update updateC;
System.debug('Contact updated (up) → ' + updateC);

// Note: Here you get the data in updateC variable but not the data acutally
// in the record, if you want that query the data again and print it.
