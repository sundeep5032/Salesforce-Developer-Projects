/*
📘 COLLECTIONS (LIST), BULKIFICATION USING APEX 
===============================================
🔹 SECTION 1: Primitive vs Collections (List)
----------------------------------------------
*/

// Declaring an Integer variable and a List variable

Integer x;
List<Integer> numList;

// Printing the default values (they’ll be null initially)
System.debug('x → ' + x);
System.debug('numList → ' + numList);

// Assigning values to both variables
x = 10;
numList = new List<Integer>{10, 50, 40, 10, 20, 30};

// Printing updated values
System.debug('x → ' + x);
System.debug('numList → ' + numList);

// 🔹 SECTION 2: Generic List Methods
// -----------------------------------

// Creating an empty list and adding elements dynamically

List<Integer> numList1 = new List<Integer>();
System.debug('numList1 before adding any elements → ' + numList1);
System.debug('numList1 String format → ' + numList1.toString());
System.debug('Size of numList1 → '+numlist1.size());
System.debug('Is numList1 Empty→ '+numlist1.isEmpty());

// Adding elements to the list using add() method
numList1.add(10);
numList1.add(50);
numList1.add(30);
numList1.add(10);
numList1.add(70);

System.debug('numList1 after adding any elements → ' + numList1);
System.debug('numList1 String format → ' + numList1.toString());
System.debug('Size of numList1 → '+numlist1.size());
System.debug('Is numList1 Empty→ '+numlist1.isEmpty());

// Cloning, merging, and accessing elements in Lists
List<Integer> numList2 = numList1.clone(); // Create a shallow copy
System.debug('numList2 → ' + numList2);

// Creating a new list with predefined elements
List<Integer> numList3 = new List<Integer>{99, 88, 55};
System.debug('numList3 → ' + numList3);

// addAll() merges two lists
numList3.addAll(numList2);
System.debug('numList3 after merging numList2 → ' + numList3);

// Accessing a specific element using get(index)
System.debug('Element at index 2 of numList2 → ' + numList2.get(2));

/*
System.debug('Element at index 8 of numList2 → '+numList2.get(8));
NOTE: This line will throw
System.ListException: List index out of bounds: 8
because index 8 does not exist.
*/

// Removing an element by index
Integer removedElement = numList3.remove(5);
System.debug('numList3 after removing the ' + removedElement + ' → ' + numList3);

// Replacing element at a specific index using set(index, value)
numList3.set(0, 70);
System.debug('numList3 after replacing 0th element with 70 → ' + numList3);

// Adding an element at a specific index
numList3.add(3, 100);
System.debug('numList3 after adding 100 at index 3 → ' + numList3);

// Sorting list in ascending order
numList3.sort();
System.debug('numList3 after sorting → ' + numList3);

// Finding index of a specific element
System.debug('Index of 10 in numList3 → ' + numList3.indexOf(10));
System.debug('Index of 43 in numList3 → ' + numList3.indexOf(43));

// Getting hashcode representation
System.debug('Hashcode representation of numList3 → ' + numList3.hashCode());

// Comparing lists and using equals(), ==, contains(), and clear()
List<Integer> numListA = new List<Integer>{10, 50, 40, 10, 20, 30};
List<Integer> numListB = numListA.clone();
// == compares values of elements
System.debug('numListA & numListB are equal (==) → ' + (numListA == numListB));
// equals() compares values of elements
System.debug('numListA & numListB are equal (equals) → ' + (numListA.equals(numListB)));
// Modify one list to show the difference
numListB.add(10);
System.debug('numListA & numListB are equal (==) → ' + (numListA == numListB));
System.debug('numListA & numListB are equal (equals) → ' + (numListA.equals(numListB)));

// Checking if the list contains a specific element
System.debug('numListB contains 100 → ' + numListB.contains(100));
System.debug('numListB contains 20 → ' + numListB.contains(20));

// Clearing all elements in a list
System.debug('numListB before clear → ' + numListB);
numListB.clear();
System.debug('numListB after clear → ' + numListB);
