// ⭐ COMBINING IF ELSE, FOR LOOP – REAL SALESFORCE USE CASE ⭐
//- When an Account is created as a Prospect, the business requires that multiple related Contacts be created automatically.

Account acc = new Account(
    Name = 'Darpa Inc', Phone = '04055662323', Fax = '0405566442323',
    email__c  = 'info@darpa.in', Type = 'Prospect'
);
insert acc;

if(acc.Type == 'Prospect'){
    for(Integer i = 1; i<3; i++){
        insert new Contact(
            FirstName = 'Darpa', LastName = 'Contact_'+i, Phone = acc.Phone+'_'+i,
            Email = 'darpa'+i+'@darpa.net', AccountId = acc.Id
        );
    }
}
