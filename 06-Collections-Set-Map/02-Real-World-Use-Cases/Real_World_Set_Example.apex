/*
🧪 Task 5 – Real-world Set Example
-----------------------------------
18. You have two lists of Account Names:
  List<String> listA = new List<String>{'Dell','HP','Apple','Lenovo'};
  List<String> listB = new List<String>{'HP','Samsung','Apple','Asus'};
19. Convert both lists to sets.
20. Find and print:
  Common accounts (intersection)
  Unique accounts in listA only
  Unique accounts in listB only
*/

// 18. Given two lists of Account Names
List<String> listA = new List<String>{'Dell','HP','Apple','Lenovo'};
List<String> listB = new List<String>{'HP','Samsung','Apple','Asus'};

//Convert both lists to sets
Set<String> setA = new Set<String>(listA);
Set<String> setB = new Set<String>(listB);

// Find and print intersections and uniqueness
Set<String> commonAccounts = new Set<String>(setA);
commonAccounts.retainAll(setB);
System.debug('Common accounts (Intersection): ' + commonAccounts);

Set<String> uniqueToA = new Set<String>(setA);
uniqueToA.removeAll(setB);
System.debug('Unique accounts in listA only: ' + uniqueToA);

Set<String> uniqueToB = new Set<String>(setB);
uniqueToB.removeAll(setA);
System.debug('Unique accounts in listB only: ' + uniqueToB);

