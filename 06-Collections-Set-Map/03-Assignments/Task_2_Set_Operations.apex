/*
🧪 Task 2 – Set Operations
---------------------------
7. Create two sets:
  Set<Integer> setA = new Set<Integer>{10,20,30,40};
  Set<Integer> setB = new Set<Integer>{30,40,50,60};
8. Perform the following and print results after each:
  a) setA.addAll(setB); → Combine (Union)
  b) setA.retainAll(setB); → Keep only common elements (Intersection)
  c) setA.removeAll(setB); → Remove common elements (Difference)
*/

// 7. Create two sets
Set<Integer> setA = new Set<Integer>{10, 20, 30, 40};
Set<Integer> setB = new Set<Integer>{30, 40, 50, 60};

// 8. Perform operations and print results

// a) setA.addAll(setB); → Combine (Union)
Set<Integer> unionSet = new Set<Integer>(setA);
unionSet.addAll(setB);

System.debug('Union (Combine): ' + unionSet);

// b) setA.retainAll(setB); → Keep only common elements (Intersection)
Set<Integer> intersectionSet = new Set<Integer>(setA);
intersectionSet.retainAll(setB);
System.debug('Intersection (Common): ' + intersectionSet); // {30, 40}

// c) setA.removeAll(setB); → Remove common elements (Difference)
Set<Integer> differenceSet = new Set<Integer>(setA);
differenceSet.removeAll(setB);
System.debug('Difference (Unique to setA): ' + differenceSet); // {10, 20}
