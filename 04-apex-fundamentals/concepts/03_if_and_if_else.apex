// 🔹 SECTION 6: Conditional Statements
// -------------------------------------
// 6A) Simple If
// Executes a block only if condition is true.
// A manager wishes people only if they come before 9 AM.
Integer currentHour = 10;
System.debug('Employee In Time → '+currentHour);
if(currentHour<9){
    System.debug('Good Morning');
}
System.debug('Bye!!!');

// 6B) If-Else
// Executes one block if condition true, another if false.
// A manager wishes Good Morning before 9 AM, else Good Day.
Integer currentHour = 10;
System.debug('Employee In Time → '+currentHour);
if(currentHour<9){
    System.debug('Good Morning');
}else{
    System.debug('Good Day');
}
System.debug('Bye!!!');
