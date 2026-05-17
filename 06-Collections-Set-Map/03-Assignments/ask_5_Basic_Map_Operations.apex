/*
🧪 Task 6 – Basic Map Operations
---------------------------------
21. Create a Map<String, String> to store:
  'john' → 'admin123'
  'maya' → 'krish234'
  'raju' → 'joker123'
  'neha' → 'admin123'
22. Print the map.
23. Add a new key 'john' with a new password 'superman@123' and observe the result.
24. Retrieve and print the password of 'maya'.
25. Try retrieving the password of a non-existent user 'alex'.
26. Use containsKey() to check whether 'alex' exists.
*/

// 21. Create a Map<String, String>
Map<String, String> userMap = new Map<String, String>{
    'john' => 'admin123',
    'maya' => 'krish234',
    'raju' => 'joker123',
    'neha' => 'admin123'
}; 

// 22. Print the map
System.debug('User Map: ' + userMap);

// 23. Add a new key 'john' with a new password and observe
userMap.put('john', 'superman@123');  // The value for 'john' gets updated to 'superman@123'
System.debug('User Map after adding John: ' + userMap);

// 24. Retrieve and print the password of 'maya'
System.debug('Retriving Maya password is = '+ userMap.get('maya'));

// 25. Try retrieving the password of a non-existent user 'alex'
System.debug('Retriving Maya password is = '+ userMap.get('Maya')); // Returns null

// 26. Use containsKey() to check whether 'alex' exists
System.debug(' Is alex exist in my list?  = '+ userMap.containsKey('alex')); // Returns null
