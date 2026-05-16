/*
🧪 Task 2 – Real-World Exercises with Custom Objects
================================================
2A – Working with Student__c
-------------------------------
1. Create a List of 10 Student__c records (not inserted yet).
2. Add all records to the list using add() inside a loop.
3. Insert all students into Salesforce in one DML statement.
4. Query all students and store them in another List.
5. Clone the queried list.
6. Use remove() to delete one student from the list and perform DML delete.
*/

System.debug('--- START: Student Automation ---');

// 1. Create a List of 10 Student__c records (not inserted yet)
List<Student__c> newStudentList = new List<Student__c>();

// Add all records to the list using add() inside a loop.
for (Integer i = 1; i <= 10; i++){
    newStudentList.add(new Student__c(
        Name = 'Test Student Batch ' + i
    ));
}

// Insert all students into Salesforce in one DML statement.
if (!newStudentList.isEmpty()){
    insert newStudentList;
    System.debug('Successfully bulk inserted ' + newStudentList.size() + ' students.');
}

// Query all students and store them in another List.
List<Student__c> queriedStudentList = [
    SELECT Id, Name 
    FROM Student__c 
    WHERE Name LIKE 'Test Student Batch%'
];
System.debug('Queried Records Count: '+ queriedStudentList.size());

// Clone the queried list.
List<Student__c> clonedStudentList = queriedStudentList.clone();
System.debug('Queried Student List == Cloned Student List :'+ (clonedStudentList.equals(queriedStudentList)));

// Use remove() to delete one student from the list and perform DML delete.
if(!clonedStudentList.isEmpty()){
    // Remove the first record from our tracking list array
    Student__c studentToRemove = clonedStudentList.remove(0);
    System.debug('Removing student from system: ' + studentToRemove.Name);
    
    // Execute DML Delete on the removed record
    delete studentToRemove;
}

System.debug('--- END: Student Automation ---');
