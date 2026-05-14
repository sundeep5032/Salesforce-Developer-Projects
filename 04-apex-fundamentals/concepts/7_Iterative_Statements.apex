// 🔹 SECTION 7: Iterative Statements
// -----------------------------------
// Used to repeat execution of a block multiple times.

// 7A) While loop: executes as long as condition is true
System.debug('WHILE Loop');
System.debug('*********************');
Integer counter = 1;
while(counter <= 5){
	System.debug('Hello '+counter);
	counter++;
}

// 7B) Do-While loop: executes block first, then checks condition
System.debug('DO-WHILE Loop');
System.debug('*********************');
Integer counter = 6;
do{
	System.debug('Hello '+counter);
	counter++;
}while(counter <= 5);

// 7C) For loop: initialization, condition, increment in one line
System.debug('FOR Loop');
System.debug('*********************');
for(Integer counter = 1;counter <= 5;counter++){
	System.debug('Hello '+counter);
}
