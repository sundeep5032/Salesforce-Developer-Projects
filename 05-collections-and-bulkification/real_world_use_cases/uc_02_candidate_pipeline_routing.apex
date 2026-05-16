/*
2B – Working with Candidate__c
---------------------------------
1. Insert 5 Candidate records with various Status__c values
2. Query all Candidates into a List.
3. Create two new lists:
4. One for "Manager Done" candidates
5. Another for "Recruited" candidates
6. Add matching records to respective lists using conditional logic.
7. Use addAll() to combine them into a final list of candidates for whom the offer is released.
8. Update their Status__c to “Recruited”.
*/

System.debug('--- START: Candidate Routing ---');
// Insert 5 Candidate records with various Status__c values
List<Candidate__c> initialCandidates = new List<Candidate__c>{
    new Candidate__c(Name = 'Candidate John', status__c = 'Applied'),
    new Candidate__c(Name = 'Candidate Jane', status__c = 'Recruited'),
    new Candidate__c(Name = 'Candidate Alex', status__c = 'Manager Done'),
    new Candidate__c(Name = 'Candidate Emma', status__c = 'Technical Done'),
    new Candidate__c(Name = 'Candidate Liam', status__c = 'Rejected')
};
insert initialCandidates;

// Query all Candidates into a List.

List<Candidate__c> totalPipeline = [
    SELECT Id, Name, status__c
    FROM Candidate__c WHERE CreatedDate = TODAY 
];

// Create two new lists: "Manager Done" and "Recruited"

List<Candidate__c> managerDoneQueue = new List<Candidate__c>();
List<Candidate__c> recruitedQueue = new List<Candidate__c>();

// 6. Add matching records to respective lists using conditional logic
for(Candidate__c cand: totalPipeline){
    if(cand.status__c == 'Manager Done'){
        managerDoneQueue.add(cand);
    }else if (cand.status__c == 'Recruited'){
        recruitedQueue.add(cand);
    }
}

// 7. Use addAll() to combine them into a final list of candidates

List<Candidate__c> offerReleasedList = new List<Candidate__c>();
offerReleasedList.addAll(managerDoneQueue);
offerReleasedList.addAll(recruitedQueue);

//  Update their Status__c to “Recruited”.
for(Candidate__c cand: offerReleasedList){
    cand.Status__c = 'Recruited';
}

// Execute the bulk DML update statement safely
if (!offerReleasedList.isEmpty()) {
    update offerReleasedList;
    System.debug('Bulk updated ' + offerReleasedList.size() + ' candidates to Recruited.');
}

System.debug('--- END: Candidate Routing ---');
