/*
🔹 SECTION 3: Iterating Lists
-------------------------------
*/

// Iterating through list elements (Traditional & Enhanced For Loop)

List<Integer> numList4 = new List<Integer>{10, 50, 40, 10, 20, 30, 80, 90};
System.debug('numList4 → ' + numList4);

// Traditional for loop
/*
    for(Integer i = 0; i < numList4.size(); i++){
        System.debug(numList4.get(i));
    }
*/
// Enhanced for loop (simpler version)
for (Integer n : numList4) {
    System.debug(n);
}
