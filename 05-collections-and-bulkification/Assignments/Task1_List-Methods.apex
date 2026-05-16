/*
🧪 Task 1 – Explore and Practice Every List Method
1A – Basic Initialization and Debugging
------------------------------------------
1. Declare a list of integers, add 5 random numbers.
2. Display the list before and after adding numbers using System.debug().
3. Try creating an empty list, then check:
    a) size()
    b) isEmpty()
    c) toString()
4. Clone it using clone() and print both lists.
*/
System.debug('--- START: Task 1 List Methods Practice ---');

List<Integer> newList = new List<Integer>();
System.debug('List before adding numbers = ' +newList); //To print list before adding numbers
newList.add(0);
newList.add(5);
newList.add(7);
newList.add(3);
newList.add(9);
System.debug('List after adding numbers = ' +newList); //To print list after adding numbers

// 1.3. Try creating an empty list, then check: size(), isEmpty(), toString()

List<Integer> emptyTestList = new List<Integer>();
System.debug('Is the list was Empty?            = ' +emptyTestList.isEmpty());
System.debug('Is the list was in String Format? = ' +emptyTestList.toString());
System.debug('Size of the List is               = ' +emptyTestList.size());

// 1.4. Clone it using clone() and print both lists

List<Integer> clonedTestList = newList.clone();
System.debug('Original List = ' +newList);
System.debug('Clone List    = ' +clonedTestList);
