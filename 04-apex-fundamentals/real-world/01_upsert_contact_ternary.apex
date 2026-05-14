// ⭐ TERNARY OPERATOR – REAL SALESFORCE USE CASE ⭐
// Scenario:
// - Upsert a Contact using a Unique Id
// - Use ternary operator to decide success message
// - Change UniqueId__c value to see INSERT vs UPDATE behavior

Contact contactRecord = new contact(
    UniqueId__c = 'JSH4455',   // Change this value during practice
    FirstName  = 'Kishan',
    LastName   = 'Kumar'
);

// Perform upsert using Unique Id field
Database.UpsertResult upsertResult = Database.upsert(contactRecord, Contact.Fiels.UniqueId__c, false);
// Use ternary operator to choose action text
String actionPerformed = upsertResult.isCreated() ? 'created' : 'updated';
// Build meaningful log message
String logMessage = 
    'Contact with Unique Id ' + contactRecord.UniqueId__c + ' was ' + actionPerformed + ' successfully';
System.debug(logMessage);
