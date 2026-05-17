/*📘 COLLECTIONS (Set & Map)
  ===========================
🔹 SECTION 1: Primitive vs List vs Map
  ---------------------------------------
*/
// Declare variables of primitive and collection types

Integer  x;
List<Integer> numList;
Set<Integer> numSet;

// Initially, these are null because they are not yet initialized
System.debug('x → ' + x);
System.debug('numList → ' + numList);
System.debug('numSet → ' + numSet);

// Assign values
x = 10;
numList = new List<Integer>{10,50,30,40,20,10,30,50};
numSet = new Set<Integer>{10,50,30,40,20,10,30,50};

// Print the values again after initialization
// Note: List allows duplicates, Set automatically removes duplicates
System.debug('x → ' + x);
System.debug('numList → ' + numList);
System.debug('numSet → ' + numSet);
