/*
SECTION 5: TYPE CONVERSION
---------------------------
*/
// Implicit conversion (safe widening)
Integer iVal = 10;
Long longVal = iVal;
System.debug('Implicit Long value → ' + longVal);
// Explicit conversion (narrowing)
Long bigLong = 1000L;
Integer smallInt = (Integer) bigLong;
System.debug('Explicit Integer value → ' + smallInt);
// Decimal to Integer (fraction truncated)
Decimal decVal = 10.77;
Integer decInt = (Integer) decVal;
System.debug('Decimal to Integer → ' + decInt);
/*
    Overflow case:
    Long tooBig = 9392002299L;
    Integer x = (Integer)tooBig;  
    ⚠ Risk: 
    Value exceeds Integer range.
    Result may be incorrect due to overflow.
*/
/*
    Invalid conversion:
    String s = 'abc';
    Integer n = (Integer)s; // ❌ Error: Not allowed
*/
