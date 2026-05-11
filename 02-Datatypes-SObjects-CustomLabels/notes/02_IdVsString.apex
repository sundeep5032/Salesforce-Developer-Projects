// String can store any text
String strId = '001g500000KAeb';
System.debug('String holding Id → ' +strId);

// Id type validates Salesforce record ID format
Id validId = '001g500000KAeb8AAD';
System.debug('Valid Id          → ' +validId);

// Invalid Id stored as String → Allowed
String wrongId = 'xyz';
System.debug('Invalid Id stored in string → '+wrongId);
/*
    NOTE:
        Id invalidId = 'xyz';
        → ❌ Runtime exception: Invalid id
        Reason:
        The Id data type validates Salesforce 15 or 18-character ID format.
*/
