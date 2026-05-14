// 6E) If-Else Ladder
// Multiple conditions checked one after another.
// Used for grading system based on marks.
/*
    A student is awarded grade based on average marks.
    91-100 A
    81-90 B
    71-80 C
    40-70 D
    0-39 F
    average not in the range, Invalid Average
*/
Integer averageMarks = 230;
System.debug('Average Marks → '+averageMarks);
if(averageMarks>90 && averageMarks<=100){
    System.debug('Grade A.');
}else if(averageMarks>80 && averageMarks<=90){
    System.debug('Grade B.');
}else if(averageMarks>70 && averageMarks<=80){
    System.debug('Grade C.');
}else if(averageMarks>=40 && averageMarks<=70){
    System.debug('Grade D.');
}else if(averageMarks>=0 && averageMarks<40){
    System.debug('No Grade.');
}else{
    System.debug('Invalid Average.');
}
