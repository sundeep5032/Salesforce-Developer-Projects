// 4E) Increment, Decrement Operators (++, --)
// Used to increase or decrease a value by 1.
Integer x = 10;
System.debug('x → '+x);
x = x + 1;
System.debug('x → '+x);  // Incremented manually

Integer y = 10;
System.debug('y → '+y);
y++;                    // Post increment operator
System.debug('y → '+y);

Integer z = 10;
System.debug('z → '+z);
++z;                    // Pre increment operator
System.debug('z → '+z);

// 4F) Post vs Pre Decrement/Increment
// Demonstrating the difference between pre and post operations.
Integer x = 10;
Integer y = 10;
System.debug('x → '+(--x)); // Pre-decrement: decrements first, then uses value
System.debug('y → '+(y--)); // Post-decrement: uses value first, then decrements
System.debug('y → '+y);     // Value after post-decrement

// 4G) Relational Operators (< <= > >= == !=)
// Used to compare two values. Returns Boolean (true/false).
Integer x = 3;
Integer y = 3;
System.debug(x+' <  '+y+' → '+(x<y));
System.debug(x+' >  '+y+' → '+(x>y));
System.debug(x+' <= '+y+' → '+(x<=y));
System.debug(x+' >= '+y+' → '+(x>=y));
System.debug(x+' != '+y+' → '+(x!=y));
System.debug(x+' == '+y+' → '+(x==y));

// 4H) Logical Operator (&& → Logical AND, || → Logical OR, !  → Logical NOT)
// Used to combine multiple conditions.
Boolean p = true;
Boolean q = false;
System.debug(p+' && '+q+' → '+(p&&q));   // AND operator
System.debug(p+' || '+q+' → '+(p||q));   // OR operator
System.debug('!'+p+' → '+(!p));          // NOT operator on true
System.debug('!'+q+' → '+(!q));          // NOT operator on false

/*
    Give me a logical expression that will always return false.
    Irrespective of what value lies in the operands of a logical expression
*/
Integer x = 10;
Integer y = 3;
Boolean result = (x<y) && (x>y); // Always false since both cannot be true
System.debug('Result → '+result);
