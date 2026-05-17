/*
🧪 Task 3 – Set with sObjects
------------------------------
9. Create a Set<Contact> and add 3 new contacts.
10. Try to insert the set using insert contacts;
11. Note the error message and explain why it happens.
12. Convert the Set<Contact> into a List<Contact> and then insert successfully.
13. insert new List<Contact>(contacts);
*/

// 9. Create a Set<Contact> and add 3 new contacts
Set<Contact> contactSet = new Set<Contact>();
for(Integer i =1; i<=3; i++){
    contactSet.add(new Contact(LastName = 'Set_Contact_' + i));
}

// 10 & 11. Note the error message and explanation
// insert contactSet; 
// ❌ ERROR: DML requires List, not Set
// Reason: Salesforce DML statements specify orderly table sequences which sets do not track.

// 12 & 13. Convert the Set into a List and insert successfully
List<Contact> contactList = new List<Contact>(contactSet);
insert contactList;
System.debug('Successfully inserted contacts via List layout: ' + contactList);
