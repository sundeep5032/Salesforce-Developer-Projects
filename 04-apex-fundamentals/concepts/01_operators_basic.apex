/*
🔹 SECTION 4: Operators (Used to Build Expressions)
----------------------------------------------------
*/

// 4A) Assignment Operator (=)
// Used to assign a value to a variable.

Integer x = 10;
System.debug('x → '+x);

// 4B) Paranthesis (())
// Demonstrating how parentheses change the order of evaluation.

Integer x = 10;
Integer y = 20;
System.debug(x+' + '+y+' → '+x+y);      // Without parentheses (concatenation)
System.debug(x+' + '+y+' → '+(x+y));    // With parentheses (addition first)

// 4C) Arithmetic Operators (+,-,*,/)
// Performing basic mathematical operations.

Integer x = 10;
Integer y = 3;
System.debug(x+' + '+y+' → '+(x+y));    // Addition
System.debug(x+' - '+y+' → '+(x-y));    // Subtraction
System.debug(x+' * '+y+' → '+(x*y));    // Multiplication
System.debug(x+' / '+y+' → '+(x/y));    // Integer division
/* Integer/Integer always gives you an integer only.
If you want to get the decimal equivalent, convert
numerator/denominator to decimal/double. */
System.debug(x+' / '+y+' → '+((Decimal)x/y)); // Decimal division
System.debug(x+' % '+y+' → '+Math.mod(x, y)); // Modulus operator gives remainder

// 4D) Arithmetic Assignment Operators (+=,-=,*=,/=)
// Short-hand way of updating variable values.

Integer x = 10;
System.debug('x → '+x);
x = x + 5;  // Adding 5 manually
System.debug('x → '+x);

Integer y = 10;
System.debug('y → '+y);
y += 5;     // Using compound assignment operator
System.debug('y → '+y);
