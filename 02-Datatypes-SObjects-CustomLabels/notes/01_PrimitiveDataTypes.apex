/*
📘 PRIMITIVE DATA TYPES • VARIABLES • CONSTANTS • TYPE CONVERSION • SOBJECT VARIABLES • CUSTOM LABELS 
======================================================================================================
SECTION 1: PRIMITIVE DATA TYPES
-------------------------------
*/
// String → Used to store text
String personName = 'Sundeep Kosaraju';
System.debug('Person Name→ '+personName);
// Integer → Whole numbers (-2,147,483,648 to 2,147,483,647)
Integer age=30;
System.debug(personName+ '\'s age is '+age);
// Long → Large whole numbers (L suffix mandatory)
Long mobileNumber = 9392002299L;
System.debug('Mobile number →' +mobileNumber);
// Decimal → Precise decimal values (financial calculations preferred)
Decimal temperature = 21.27;
System.debug('Temperature → ' +temperature);
// Double → Floating-point (less precise than Decimal)
Double piValue = 3.14159265358979;
System.debug('Double Value → ' + piValue);
// Boolean → true / false
Boolean isAdminCompleted = true;
System.debug('Admin completed? → ' +isAdminCompleted);
// Date using newInstance(year, month, day)
Date joinDate = Date.newInstance(2026,05,11);
System.debug('Join Date → '+joinDate);
// Date using parse(String)
Date parsedDate = Date.parse('11/05/2026');
System.debug('Parsed Date → '+parsedDate);
System.debug('Parsed Date (formatted) → '+parsedDate.format());
// Today’s Date
Date today = Date.today();
System.debug('Today → '+today);
// Time
Time classStartTime = Time.newInstance(10,30,0,0);
System.debug('Class Start Time → '+classStartTime);
// Datetime
Datetime dt1= Datetime.newInstance(2026,05,11,10,30,0);
Datetime dt2= Datetime.newInstance(parsedDate, classStartTime);
System.debug('Datetime 1 → '+dt1);
System.debug('Datetime 1 (Formatted) → '+dt1.format());
System.debug('Datetime 2 → '+dt2);
System.debug('Datetime 2 (Formatted) → '+dt2.format());
// Current Datetime
System.debug('Now → ' + DateTime.now());
System.debug('Now (Long Format) → ' + DateTime.now().formatLong());
