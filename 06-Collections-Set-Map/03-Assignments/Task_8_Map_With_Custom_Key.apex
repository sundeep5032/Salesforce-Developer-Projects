/*
🧪 Task 9 – Map with Custom Key (Email as Key)
-----------------------------------------------
32. Query all contacts having non-null emails.
33. Create a Map<String, String> where:
    Key: Email
    Value: Name
34. Print a message for each contact:
    Dear <Name>, welcome to Salesforce training. Your registered email is <Email>.
*/

// Query all contacts having non-null emails.
List<Contact> records = [
    SELECT Id, Name, Email 
    FROM Contact 
    WHERE Email != null
    LIMIT 5
];

// Create a Map<String, String> where:
    // Key: Email
    // Value: Name
Map<String, String> emailToNameMap = new Map<String, String>();
for(Contact c: records){
    emailToNameMap.put(c.Email, c.Name);
}

// Print a message for each contact using the map
for(String email: emailToNameMap.keySet()){
    System.debug('Dear ' + emailToNameMap.get(email) + ', welcome to Salesforce training. Your registered email is ' + email + '.');
}
