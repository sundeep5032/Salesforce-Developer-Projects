/*
🧪 Task 1 – Basic Set Creation
-------------------------------
1. Create a Set<Integer> containing these values:
{10, 20, 30, 20, 40, 10, 50}
2. Print the set.
3. Observe if duplicates remain.
4. Add a new number 60 and print again.
5. Remove the number 30 and print again.
6. Check whether 40 exists using contains(40).
*/

// 1. Create a Set<Integer> containing these values
Set<Integer> newSet = new Set<Integer>{10, 20, 30, 20, 40, 10, 50};

// 2. Print the set
System.debug('Printing new Set = ' +newSet);
// 3. Observe if duplicates remain
// Observation: Duplicates (10, 20) are automatically removed. Output will be {10, 20, 30, 40, 50}

// 4. Add a new number 60 and print again
newSet.add(60);
System.debug('After adding 60 to new Set = ' +newSet);

// 5. Remove the number 30 and print again
newSet.remove(30);
System.debug('After removing 30 from newSet = ' +newSet);

// 6. Check whether 40 exists using contains(40)
Boolean exists = newSet.contains(40);
System.debug('Does 40 exist? ' + exists);
