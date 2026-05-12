/*
📘 Topic 3: Type Conversion
----------------------------
🎯Goal: Practice implicit, explicit, safe, and unsafe conversions.
🧪 Tasks:
1. Convert an Integer to Long (implicit). Print both values.
2. Convert a Decimal to Integer (explicit).  
   Observe: decimal part gets truncated.
3. Try converting a String to Integer:
       String s = 'abc';
       Integer x = Integer.valueOf(s);  // Use try-catch
   Catch and print the error message.
4. Declare an Object that stores a number:
       Object obj = 50;
   Convert it back to Integer using casting and print.
Bonus:
- Demonstrate overflow:
       Long bigNum = 9999999999L;
       Integer small = (Integer)bigNum;
  Explain what happens.
*/

// Task 1: Integer to Long (implicit)
Integer myInteger = 100;
Long myLong = myInteger;
System.debug('Integer → ' + myInteger);
System.debug('Long    → ' + myLong);

// Task 2: Decimal to Integer (explicit - decimal part truncated)
Decimal myDecimal = 99.99;
Integer myInt = (Integer) myDecimal;
System.debug('Decimal              → ' + myDecimal); //99.99
System.debug('Truncated Decimal    → ' + myInt); //99

// Task 3: String to Integer using try-catch
try{
     String s = 'abc';
     Integer x = Integer.valueOf(s);
     System.debug('Converted → ' + x);
}
catch (Exception e){
    System.debug('Error → '+ e.getMessage());
}

// Task 4: Object storing a number, cast back to Integer
Object obj = 50;
Integer myResult = (Integer)obj;
System.debug('Object          → ' + obj);
System.debug('Cast to Integer → ' + myResult);

// Bonus: Overflow demonstration
Long bigNum = 9999999999L;
Integer small = (Integer)bigNum;
System.debug('Long value      → ' + bigNum);
System.debug('After overflow  → ' + small);
/*
    What happens:
    9,999,999,999 exceeds Integer max (2,147,483,647).
    Apex does NOT throw an error — it silently cuts off
    the extra bits and gives a completely wrong value.
    Always check the value fits the target type before casting.
*/
