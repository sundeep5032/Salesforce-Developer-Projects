// 🔹 SECTION 6: Why Lists (LIMIT Problem)
// ----------------------------------------
// Inserting 200 Contacts using a loop (not bulkified)

for (Integer i = 1; i <= 200; i++) {
    insert new Contact(LastName = 'Test_' + i);     
}
// Error: System.LimitException: Too many DML statements: 151

// 🔹 SECTION 7: Bulkification Operations (Insert, Read, Update, Delete & Undelete)
// ---------------------------------------------------------------------------------

// Bulk insert of multiple Contact records

List<Contact> contacts = new List<Contact>();
for (Integer i =1; i <= 200; i++){
    contacts.add(
        new Contact(
            FirstName = 'Bulkified', LastName = 'Contact_' + i,
            Phone = '345345435' + i, Email = 'bulkified.contact_' + i + '@bulk.net'
        )
    );
}
System.debug('contacts before insert → ' + contacts);
System.debug('Size of contacts → ' + contacts.size());

// Bulk insert operation
insert contacts;
System.debug('contacts after insert → ' + contacts);

// Querying and displaying Contact records
List<Contact> fetchedContacts = [
    SELECT Id, Name, Phone 
    FROM Contact
    WHERE FirstName = 'Bulkified'
];
System.debug('Size of fetched contacts → ' + fetchedContacts.size());

// Displaying queried records
for(Contact c : fetchedContacts){
     System.debug(c.Id + ' --- ' + c.Name + ' --- ' + c.Phone);
}

// Updating queried Contact records
List<Contact> updateContacts = [
    SELECT Id, Phone 
    FROM Contact
    WHERE FirstName = 'Bulkified'
];
for(Contact c: updateContacts){
    c.Title = 'Dummy'; c.MobilePhone = c.Phone; c.LeadSource = 'Dummy';
    c.MailingStreet = 'Kondapur'; c.MailingCity = 'Hyderabad';
}
update updateContacts;

// Deleting Contact records
List<Contact> deleteContacts = [
    SELECT Id 
    FROM Contact
    WHERE FirstName = 'Bulkified'
];
delete deleteContacts;

// Restoring deleted records using Undelete DML
undelete [
    SELECT Id 
    FROM Contact
    WHERE FirstName = 'Bulkified'
    ALL ROWS
];
