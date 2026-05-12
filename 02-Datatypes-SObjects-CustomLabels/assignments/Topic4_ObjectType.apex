/*
📘 Topic 4: Object Type
------------------------
🎯Goal: Understand generic Object storage and its limitations.
🧪 Tasks:
1. Store a String, Integer, and Boolean inside Object variables.
   Print them using System.debug().
2. Try performing arithmetic:
       Object a = 10;
       Object b = 20;
       Object c = a + b;
   Note the compile-time error.
3. Cast Object variables back to their original types and perform valid operations.
*/

// Task 1: Store different types in Object variables
Object myString = 'Hello Apex';
Object myInteger = 42;
Object myBoolean = false;
System.debug('Object (String)  → ' + myString);
System.debug('Object (Integer) → ' + myInteger);
System.debug('Object (Boolean) → ' + myBoolean);

// Task 2: Arithmetic on Object → compile-time error
// Object a = 10;
// Object b = 20;
// Object c = a + b;
// ❌ Uncommenting the above causes:
//    "Illegal operator for type Object"
//    Reason: Apex does not know the actual type inside
//    Object at compile time, so it cannot apply + operator

// Task 3: Cast back to original types and perform operations
String castedString = (String)myString;
Integer castedInteger = (Integer)myInteger;
Boolean castedBoolean = (Boolean)myBoolean;

// String operations
System.debug('Uppercase   → ' + castedString.toUpperCase());
System.debug('Length      → ' + castedString.length());

// Integer operations
System.debug('Add 10      → ' + (castedInteger + 10));
System.debug('Multiply 2  → ' + (castedInteger * 2));

// Boolean operations
System.debug('Negated     → ' + !castedBoolean);
