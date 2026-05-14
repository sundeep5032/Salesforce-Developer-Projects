//6D) Nested If-Else
// One if-else inside another if-else.
// Manager greets differently based on time.
Integer currentHour = 16;
System.debug('Employee In Time → '+currentHour);
if(currentHour<9){
    System.debug('Good Morning.');
}else{
    if(currentHour<12){
        System.debug('Good Day.');
    }else{
        System.debug('Good Afternoon.');
    }
}
System.debug('Bye!!!');
