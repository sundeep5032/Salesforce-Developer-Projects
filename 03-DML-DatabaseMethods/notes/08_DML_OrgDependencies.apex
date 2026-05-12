/*
🔹 SECTION 3: DML Statements with Org Dependencies (Examples)
============================================================

Notes:
- Opportunities require CloseDate and StageName by default in most orgs.
- Hardcoding AccountId / RecordTypeId is NOT recommended in production.
- We have a flow which will set the CloseDate to 90 days from today hence
this is optional for our Orient Electric Company.
- We are using Custom Labels created in the previous session to avoid
hardcoding of id's following the best practices.
*/

Opportunity o5 = new Opportunity(
    Name = 'Order-005', StageName = 'Perception Analysis', CloseDate = Date.today().addDays(7), 
    OwnerId = Label.martinId, RecordTypeId = Label.salesOrderRecTypeId, AccountId = Label.EdgeCommunicationsId
);
System.debug('Opportunity 5 → '+ o5);
insert o5;
