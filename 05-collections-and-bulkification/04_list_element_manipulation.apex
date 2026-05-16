/*🔹 SECTION 4: Manipulating List Elements using For-Each
--------------------------------------------------------
*/
// Doubling each number using a temporary list
List<Integer> numList5 = new List<Integer>{10, 50, 40, 10, 20, 30, 89, 90};
List<Integer> tempList = new List<Integer>();
System.debug('numList5 before doubling → ' + numList5);

// Doubling each element and storing in tempList
for(Integer val : numList5){
    val *=2;
    tempList.add(val);
}
numList5 = tempList;
System.debug('numList5 after doubling → ' + numList5);

// Doubling each number using set() and counter
List<Integer> numList6 = new List<Integer>{10, 50, 40, 10, 20, 30, 80, 90};
System.debug('numList6 before doubling → ' + numList6);
Integer counter = 0;

// Modifying original list directly
for (Integer val : numList6){
    val *=2;
    numList6.set(counter++, val);
}
System.debug('numList6 after doubling → ' + numList6);
