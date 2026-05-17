/*
🔹 SECTION 3: Understanding Set behavior and iteration
-------------------------------------------------------
*/
Set<Integer> numSet = new Set<Integer>{10,50,30,40,20,10,30,50};
System.debug('numSet → ' + numSet);

/*
for(Integer i=1; i<=numSet.size(); i++){
    System.debug(numSet.get(i));
    // ❌ ERROR:
    // Method does not exist: get(Integer)
    // Reason: Set doesn’t have indexes — elements are unordered.
}
*/

// ✅ Correct way to iterate over a Set:
for (Integer x: numSet){
    System.debug(x);
}
