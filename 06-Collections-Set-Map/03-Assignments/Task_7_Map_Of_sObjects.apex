/*
🧪 Task 8 – Map of sObjects
----------------------------
28. Query all contacts created YESTERDAY:
  Map<Id, Contact> contactMap = new Map<Id, Contact>([
      SELECT Id, Name, Email FROM Contact WHERE CreatedDate = YESTERDAY
  ]);
29. Print all contact Ids using keySet().
30. Retrieve a contact using one of the keys and print its name and email.
31. Loop through the map and print:
     Id → Name → Email
*/

// Query all contacts created today:
Map<Id, Contact> contactMap = new  Map<Id, Contact>([
    SELECT Id, Name, Email 
    FROM Contact 
    WHERE CreatedDate = YESTERDAY
]);

// Print all contact Ids using keySet().
System.debug('All contact Ids are = ' + contactMap.keySet());

// Retrieve a contact using one of the keys and print its name and email.

if(!contactMap.isEmpty()){
    List<Id> keyList = new List<Id>(contactMap.keySet());
    Id singleKey = keyList.get(0);
    Contact singleCon = contactMap.get(singleKey);
    System.debug('Single Contact Lookup: ' + singleCon.Name + ' -- ' + singleCon.Email);
}

// Loop through the map and print:
    //  Id → Name → Email

for (Id contactId: contactMap.keySet()){
    Contact c = contactMap.get(contactId);
    System.debug(contactId + ' → ' + c.Name + ' → ' + c.Email);
}
