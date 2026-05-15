/*
🧪 Task 2 – Loops Practice
1. Understand how loops work — and the difference between conditional and looping statements.
2. Print “I love Salesforce” 10 times using a while loop.
3. Print “I love Salesforce” 10 times using a do-while loop.
4. Print “I love Salesforce” 10 times using a for loop.
5. Repeat questions 7-9 but vary:

    The starting value
    The condition
    The increment/decrement expression.
*/
Integer count = 1;
while (count <= 10){
    System.debug('I love Salesforce '+count);
    count++;
}

Integer count = 11;
do{
    System.debug('I love Salesforce '+count);
    count ++;
}while(count <=10);

for(Integer count = 1; count<=10; count++){
    System.debug('I love Salesforce '+count);
}

// While variation: Counting down from 100 by 10s
Integer w = 100;
while (w > 0) {
    System.debug('I love Salesforce' +w);
    w -= 10;
}

// Do-While variation: Evaluates at least once even if condition starts false
Integer dw = 20;
do {
    System.debug('I love Salesforce'+dw);
    dw++;
} while (dw < 15); // Executes exactly 1 time

// For variation: Starts at 5, multiplies loop counter
for (Integer i = 5; i <= 2560; i *= 2) {
    System.debug('I love Salesforce'+i); // Runs 10 times (5, 10, 20, 40, 80, 160, 320, 640, 1280, 2560)
}
