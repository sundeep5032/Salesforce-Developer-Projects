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

// ----------------------------------------------------------------------------
// 1B – Access, Insert, Update, Remove Elements
// ----------------------------------------------------------------------------
// 1. Use get(index) to access elements

System.debug('Element at index 1: '+newList.get(1));
// System.debug('Element at index 6: '+newList.get(6)); 
/*
    This above statement will throw List index out of bounds
    reason: our list size was 5
*/

// 2. Use set(index, value) to modify an element
newList.set(2, 50);
System.debug('Modified an Element at index 2 from 7 to 50 = ' + newList);

// 3. Add an element at a specific position using add(index, value)
newList.add(0, 105); 
System.debug('1B - After adding 105 at index 0: ' + newList);

// 4. Remove an element using remove(index)
Integer removedVal = newList.remove(4);
System.debug('1B - Removed element at index 4 (' + removedVal + '): ' + newList);

// 5. Experiment with an invalid index and note the exception
try {
    System.debug('This will fail: ' + newList.get(20));
} catch (System.ListException ex) {
    System.debug('1B - Caught expected exception: ' + ex.getMessage());
}

/*
1C – Sorting and Searching
-----------------------------
1. Create a list of random integers.
2. Sort it using sort().
3. Find index of a specific element using indexOf(value).
4. Check whether the list contains(value).
5. Reverse the list manually using a loop.
*/

// 1 & 2. Sort the list using sort()
newList.sort();
System.debug(' Sorted List = '+newList);

// 3. Find index of a specific element using indexOf(value)
System.debug('Index of element 99: '+newList.indexOf(105));

// 4. Check whether the list contains(value)
System.debug('Does list Contains 45? ' + newList.contains(45));

// 5. Reverse the list manually using a loop
List<Integer> reversedList = new List<Integer>();
for(Integer i = newList.size() - 1; i >=0; i--){
    reversedList.add(newList.get(i));
}
System.debug('Manually Reversed List: '+reversedList);

/*
1D – Comparison and Equality
-------------------------------
1. Create two identical lists using new List<Integer>{}.
2. Compare them using:
    a) ==
    b) .equals()
3. Modify one list and compare again.
4 Print the hashCode() of both lists.
*/

// 1. Create two identical lists
List<Integer> patternA = new List<Integer>{1, 2, 3};
List<Integer> patternB = new List<Integer>{1, 2, 3};

// 2. Compare them using == and .equals()
System.debug('Operator (==) Equality: ' + (patternA == patternB));
System.debug('Method (.equals) Equality: ' + (patternA.equals(patternB)));

// 3. Modify one list and compare again
patternB.add(4);
System.debug('Operator (==) Equality: ' + (patternA == patternB));
System.debug('Method (.equals) Equality: ' + (patternA.equals(patternB)));

// 4. Print the hashCode() of both lists
System.debug('HashCode Pattern A: '+ patternA.hashCode());
System.debug('HashCode Pattern B: '+ patternB.hashCode());

/*
1E – Merging, Clearing, and Copying
--------------------------------------
1. Create two lists and use addAll() to merge.
2. Use clear() to empty one list.
3. Verify that the list is empty using isEmpty().
4. Use clone() again to make an independent copy.
*/

// 1. Create two lists and use addAll() to merge
List<Integer> listOne = new List<Integer>{10, 20};
List<Integer> listTwo = new List<Integer>{30, 40};

listOne.addAll(listTwo);
System.debug('Merged List to One ' + listOne);

// 2 & 3. Use clear() to empty one list and verify with isEmpty()
listTwo.clear();
System.debug('After Clearing the ListTwo: ' +ListTwo.isEmpty());

// 4. Use clone() again to make an independent copy
List<Integer> independentCopy = listOne.clone();
System.debug('Independent Copy is : '+independentCopy);

System.debug('--- END: Task 1 List Methods Practice ---');
