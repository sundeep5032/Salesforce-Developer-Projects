/*SECTION 3: OBJECT vs PRIMITIVE TYPES
------------------------------------
*/
// Object → Generic container that can hold any type
Object o1 = 10;
Object o2 = 20.45;
Object o3 = true;
Object o4 = 'Hello';
Object o5 = Date.today();
system.debug(o1);
system.debug(o2);
system.debug(o3);
system.debug(o4);
system.debug(o5);
//Arithmetic works only with primitive numeric types
Integer a = 10;
Integer b = 20;
Integer sum = a + b;
system.debug(a+ '+' +b+ '=' +sum);
/*
    NOTE:
        Object x = 10;
        Object y = 20;
        Object z = x + y;  // ❌ ERROR

        Reason:
        Arithmetic expressions require numeric primitive types.
        Object must be cast back to Integer before use.
*/
