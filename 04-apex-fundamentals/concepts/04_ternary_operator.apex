// 6C) Ternary Operator
// Shorthand for if-else conditions.
/* Without ternary operator */
Integer x;
Integer y;
System.debug('x → '+x);
System.debug('y → '+y);
if(x!=null){
    y = x;
}else{
    y = 0;
}
System.debug('x → '+x);
System.debug('y → '+y);

/* With ternary operator */
Integer x=10;
Integer y;
System.debug('x → '+x);
System.debug('y → '+y);
y = (x!=null) ? x : 0;  // If x not null assign x else assign 0
System.debug('x → '+x);
System.debug('y → '+y);
