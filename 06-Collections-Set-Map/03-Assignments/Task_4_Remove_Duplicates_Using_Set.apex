/*
🧪 Task 4 – Remove Duplicates Using Set
----------------------------------------
14. Given a List<String> of student names with duplicates:
  {'John','Maya','John','Karan','Maya','Kavya'}
15. Convert it into a Set<String> to remove duplicates.
16. Convert the set back into a list and print it.
17. Explain how Set helped in this scenario.
*/


// 14. Given a List<String> of student names with duplicates
List<String> studentList = new List<String>{'John','Maya','John','Karan','Maya','Kavya'};
System.debug('Original List with Duplicates: ' + studentList);

// 15. Convert it into a Set<String> to remove duplicates
Set<String> uniqueStudents = new Set<String>(studentList);

// 16. Convert the set back into a list and print it
List<String> cleanedList = new List<String>(uniqueStudents);
System.debug('Cleaned List without Duplicates: ' + cleanedList);

// 17. Explain how Set helped in this scenario
// Explanation: Sets enforce element uniqueness structurally. Passing a duplicate-filled collection 
// into a Set constructor instantly strips out identical keys in a single line.
