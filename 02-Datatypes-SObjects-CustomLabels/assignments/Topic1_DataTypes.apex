/*
📘 Topic 1: Data Types
-----------------------  
🎯Goal: Work with primitive and complex types in Apex.
🧪 Tasks:
1. Create one variable for each type:
   Integer, Long, Decimal, Double, Boolean, String, Date, Time, Datetime.
   Print each with a clear message.
2. Create two dates:
   - One using Date.newInstance()
   - One using Date.parse()
   Print the difference in days using:
       Date.daysBetween(date1, date2)
3. Store the current time using Time.now() or Time.newInstance().
   Print the hour, minute, and second separately using:
       t.hour(), t.minute(), t.second()
4. Declare a Datetime variable for the current moment.
   Print only the date part using format().
Bonus:
- Print the current day of week (Monday/Tuesday...) using:
      Date.today().format('EEEE')
*/

//TASK 1. Create one variable for each type:
Integer myAge = 25;
Long myPhone = 9857462534L;
Decimal myBalance = 123456.78;
Double myPi = 3.14159265358979;
Boolean isStudent = True;
String myName = 'Sai Kumar';
Date myBirthDate = Date.newInstance(2000,6,15);
Time myTime = Time.newInstance(10,30,0,0);
Datetime myDateTime = Datetime.now();

//Outputs as per the requirement
System.debug('Integer  → ' + myAge);
System.debug('myPhone  → ' + myPhone);
System.debug('myBalance  → ' + myBalance);
System.debug('myPi  → ' + myPi);
System.debug('isStudent  → ' + isStudent);
System.debug('myName  → ' + myName);
System.debug('myBirthDate  → ' + myBirthDate);
System.debug('myTime  → ' + myTime);
System.debug('myDateTime  → ' + myDateTime);

//Task 2: Two dates and difference in days
Date date1 = Date.newInstance(2025,01,01);
Date date2 = Date.parse('15/06/2025');
Integer daysDiff = date1.daysBetween(date2);

System.debug('Date1 (newInstance) → '+ date1);
System.debug('Date2 (parse)       → '+ date2);
System.debug('Observing diff of above statement → '+ daysDiff + ' days');

// Task 3: Hour, minute, second from current time
Time  t = DateTime.now().time();

System.debug('Hour   → ' + t.hour());
System.debug('Minute → ' + t.minute());
System.debug('Second → ' + t.second());

// Task 4: Datetime — print only the date part
DateTime currentMoment = DateTime.now();

System.debug('Full Datetime  → ' + currentMoment);
System.debug('Full Datetime  → ' + currentMoment.format('MM/dd/yyy'));

// Bonus: Current day of the week
System.debug('Day of Week → ' +DateTime.now().format('EEEE'));
