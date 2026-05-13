/*
🔹 SECTION 4: Database Methods using Candidate__c (SaveResult patterns)
==================================================================

Why Database methods?
- DML statements (insert/update/delete/upsert/undelete/merge) throw exceptions on failure.
- Database methods can return result objects (SaveResult/UpsertResult/DeleteResult),
  and can optionally allow partial success with allOrNone = false.
*/
/*
4A) DATABASE.INSERT (SINGLE)
-----------------------------
*/
Candidate__c candInsert = new Candidate__c(
    Name     = 'Aashish',
    email__c = 'aashish@gmail.info',
    skill__c = 'Salesforce',
    exp__c   = -5
);
// allOrNone = false allows partial success in Bulk operations,
// but for single record it mainly demonstrates the signature.
System.debug('Candidate → '+ candInsert);
Database.SaveResult srInsert = Database.insert(candInsert, false);
System.debug('Result  → '+ srInsert);
System.debug('Sucess  → '+ srInsert.isSuccess());
System.debug('Id      → '+ srInsert.getId());
System.debug('Errors  → '+ srInsert.getErrors());
// - Note: Try giving wrong inputs and see how the errors are generated.
/*
4B) DATABASE.UPDATE (SINGLE)
---------------------------------
*/
Candidate__c candUpdate = [
    SELECT Id, email__c, skill__c, exp__c
    FROM Candidate__c
    WHERE email__c = 'aashish@gmail.info'
    LIMIT 1
];
candUpdate.mobile__c = '456363534345';
candUpdate.skill__c = 'DevOps';
candUpdate.exp__c = 6;
Database.SaveResult srUpdate = Database.update(candUpdate, false);
System.debug('Update Result  → '+srUpdate);
System.debug('UPDATE success. Id → ' + srUpdate.getId());
System.debug('UPDATE failed. Errors → ' + srUpdate.getErrors());

/*
4C) DATABASE.UPSERT (SINGLE)
----------------------------
Upsert with Database:
- Use an External Id field (recommended) to match records.
- If match found → update, else → insert.
- There is no external Id field in Candidate__c Object, so please modify the
email__c field which is already unique and enable the External Id option.
- The field mentioned in the upsert method must be definitely populated 
else you get an error saying Missing Argument
*/

Candidate__c canUp1 = new Candidate__c(
    Name = 'Aashish Malhotra', skill__c = 'Devops',
    status__c = 'Applied', email__c = 'aashish@gmail.info'
);
Candidate__c canUp2 = new Candidate__c(
    Name = 'Aavyan Krishna', skill__c = 'Salesforce', exp__c = 6,
    status__c = 'Applied', email__c = 'aavyan@gmail.info'
);

Database.UpsertResult ur1 = Database.upsert(canUp1, Candidate__c.Fields.email__c, false);
Database.UpsertResult ur2 = Database.upsert(canUp2, Candidate__c.Fields.email__c, false);
System.debug('Upsert Result 1 → '+ur1);
System.debug('Is created → '+ur1.isCreated());
System.debug('Upsert Result 2 → '+ur2);
System.debug('Is created → '+ur2.isCreated());

/*
4D) DATABASE.DELETE (SINGLE)
---------------------------------
*/
Candidate__c canD = [
    SELECT Id FROM Candidate__c
    WHERE email__c = 'aashish@gmail.info' LIMIT 1
];
Database.deleteresult drDelete = database.Delete(cand, FALSE); //NOT a Case-sensitive
System.debug('Record Id → ' + drDelete.getId());
System.debug('DELETE Success/Failure. Status → ' + drDelete.isSuccess());
System.debug('DELETE failed. Errors → ' + drDelete.getErrors());

/*
4E) DATABASE.UNDELETE (SINGLE)
---------------------------------
*/
Candidate__c canUnd = [
    SELECT Id FROM Candidate__c
    WHERE email__c = 'aashish@gmail.info' LIMIT 1
    ALL ROWS
];
Database.UndeleteResult duUndelete = Database.undelete(canUnd, false);
System.debug('Record Id → ' + duUndelete.getId());
System.debug('DELETE Success/Failure. Status → ' + duUndelete.isSuccess());
System.debug('DELETE failed. Errors → ' + duUndelete.getErrors());
