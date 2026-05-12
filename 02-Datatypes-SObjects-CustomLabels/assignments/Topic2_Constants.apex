/*
📘 Topic 2: Constants (final)
------------------------------ 
🎯Goal: Learn immutability and constant usage.
🧪 Tasks:
1. Declare a final Decimal gravity = 9.8 and print it.
2. Try changing the value:
      gravity = 10;
   Observe the compiler error (do not keep this line in final code).
3. Declare:
      final String INSTITUTE_NAME = 'Swhizz Technologies';
   Print:
      "Student <name> is learning at Swhizz Technologies"
Bonus:
- Create a constant MONTHS_IN_YEAR = 12 and use it in a simple calculation.
*/
// Task 1: Declare a final Decimal and print it
final Decimal gravity = 9.8;
System.debug('Gravity → ' + gravity);

// Task 2: Try changing the value
// gravity = 10;
// ❌ If you uncomment the above line, you get a compile-time error:
//    "Variable is final, it cannot be reassigned"

// Task 3: Institute name and student message
final String INSTITUTE_NAME = 'Swhizz Technologies';
String studentName = 'Sai Kumar';

System.debug('Student '+ studentName +' is learning at ' + INSTITUTE_NAME);

// Bonus: monthsInYear in a calculation
final Integer MONTHS_IN_YEAR = 12;
Decimal monthlySalary = 50000;
Decimal annualSalary = monthlySalary * MONTHS_IN_YEAR;
System.debug('Monthly Salary → ' + monthlySalary);
System.debug('Annual Salary  → ' + annualSalary);
