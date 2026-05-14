// ⭐ FOR LOOP – REAL SALESFORCE USE CASE ⭐
//- Create multiple similar Contact records in one operation.

for(Integer i =1; i<20; i++){
    insert new Contact(
        FirstName = 'Loop', LastName = 'Contact_BLK_'+i, Phone = '04055664477'+i,
        Email = 'Loop.contact_blk_'+i+'@salesforce.net'
    );
}

//Do it yourself
// Create 20 Students records using loop.
// Create 20 Bank Account records using loop.
// Create 20 Candidate records using loop.
