// ⭐ IF-ELSE LADDER – REAL SALESFORCE USE CASE ⭐
// Scenario:
// - Insert a Contact using Database.insert()
// - Handle success and different error cases using if–else ladder
// - Display meaningful messages instead of generic errors

Contact contactRecord = new contact(
    FirstName = 'Greeshma',
    LastName = 'Saanvi',
    Email   = 'greeshma.saanvi@gmail.com'
);
Database.SaveResult saveResult = Database.insert(contactRecord, false);
String logMessage;
if(saveResult.isSuccess()){
    logMessage = contactRecord.FirstName+ ' ' +contactRecord.LastName+ ' created successfully';
    system.debug(logMessage);
}else{
     // System.debug(saveResult.getErrors());
    // System.debug(saveResult.getErrors()[0]);
    // System.debug(saveResult.getErrors()[0].getFields());
    // System.debug(saveResult.getErrors()[0].getMessage());
    // System.debug(saveResult.getErrors()[0].getStatusCode().toString());
     String statusCode = saveResult.getErrors().get(0).getStatusCode().toString();
    if(statusCode == 'REQUIRED_FIELD_MISSING'){
        logMessage = 'Contact creation failed due to missing required data.'+
            'Please provide values for: '+saveResult.getErrors()[0].getFields();
    }else if(statusCode == 'INVALID_EMAIL_ADDRESS'){
        logMessage = 'Contact creation failed due to invalid email address.'+
            'Please enter a valid '+saveResult.getErrors()[0].getMessage();
    }else if(statusCode == 'DUPLICATE_VALUE'){
        logMessage = 'Contact creation failed because another record found with sames unique id.'+
            'Please review existing contacts before creating a new one.';
    }else if(statusCode == 'DUPLICATES_DETECTED'){
        logMessage = 'Contact creation failed because a duplicate record was detected.'+
            'Please review existing contacts before creating a new one.';
    }else{
        logMessage = 'Contact creation failed due to an unexpected system error.'+
            'Please contact the salesforce administrator'+saveResult.getErrors()[0].getMessage();
    }
    System.debug(LoggingLevel.ERROR,logMessage);
}
/*  Collected from error debugs before.
        If success, getId = Id of the created record
        If lastname is missed, StatusCode: REQUIRED_FIELD_MISSING, Fields: (LastName)
        If email is not valid, StatusCode: INVALID_EMAIL_ADDRESS, Message: Email: invalid email address: greeshma
        If duplicate is found, StatusCode: DUPLICATES_DETECTED
        If duplicate record is found because of duplicate rules: DUPLICATE_VALUE
*/
