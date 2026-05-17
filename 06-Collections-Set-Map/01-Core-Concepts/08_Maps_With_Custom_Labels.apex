/*
🔹 SECTION 8: Using Map with Custom Labels
-------------------------------------------
Custom Labels:
1. Default_Customer_Id → (001gK00000Q28FRQAZ)
2. Some_Customer_Id → (001gK00001234FRQAZ)
*/

// Retrieve the Account using Id from Custom Label
Map<Id, Account> accounts = new Map<Id, Account> ([SELECT Id, Name FROM Account]);
System.debug('Name of Default Customer Id → '+ accounts.get(Label.granolaId)?.Name);
System.debug('Name of Some Customer Id → '+ accounts.get(Label.someaccountId)?.Name);
// Safely handle null values (In case you want not to use ?. operator below is how we handle it.)
Account acc = accounts.get(Label.Some_Customer_Id);
if(acc != null){
    System.debug(acc.Name);
} else {
    System.debug(null);
}
 
