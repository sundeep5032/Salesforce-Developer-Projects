/*
🔹 SECTION 2: Duplicate Behaviour, Set methods usage
-----------------------------------------------------
*/
// Another example to observe duplicate behavior

List<Integer> numList1 = new List<Integer>{10,20,40,30,20,10};
System.debug('numList1 → ' + numList1);

Set<Integer> numSet1 = new Set<Integer>{10,20,40,30,20,10};
System.debug('numSet1 → ' + numSet1);  // Duplicates will be removed

// Create another Set
Set<Integer> numSet2 = new Set<Integer>{50,90};
System.debug('numSet2 → ' + numSet2);

// Add all elements of numSet2 into numSet1
numSet1.addAll(numSet2);
System.debug('numSet1 → ' + numSet1);  // numSet1 now includes 50 and 90

// Remove elements that are present in numList2
List<Integer> numList2 = new List<Integer>{80,70,50,30};
System.debug('numList2 → ' + numList2);

numSet1.removeAll(numList2);
System.debug('numSet1 → ' + numSet1);  // Removes 50 and 30 (common elements)

// Retain only elements that exist in numSet2
numSet1.retainAll(numSet2);
System.debug('numSet1 → ' + numSet1);  // Keeps only elements also in numSet2
