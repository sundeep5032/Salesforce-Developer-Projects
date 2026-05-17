🔹 SECTION 7: Real-world example: Building a contact email map
---------------------------------------------------------------
List<Contact> contacts = [
    SELECT Name, Email FROM Contact
    WHERE Email != null
];

// Create a Map to store Email as key and Name as value
Map<String, String> contactsMap = new Map<String, String>();
for(Contact c : contacts){
    contactsMap.put(c.Email, c.Name);
}

// Use the Map to generate personalized messages
for(String email : contactsMap.keySet()){
    System.debug(email + ' --- Dear ' + contactsMap.get(email) + ', how are you?');
}

🔹 SECTION 7: System-created Map from SOQL (SObject Map)
---------------------------------------------------------
/*
When a Map is initialized with a SOQL query, Salesforce automatically
uses the record Id as the key, and the sObject record as the value.
*/
Map<Id, Bank_Account__c> banks = new Map<Id, Bank_Account__c>([
    SELECT Id, Name, Amount__c
    FROM Bank_Account__c
]);
for(Id bankId : banks.keySet()){
    System.debug(bankId + ' --- ' + banks.get(bankId).Name + ' --- ' + banks.get(bankId).Amount__c);
}
