/*
🔹 SECTION 5: Understanding Map in Apex
----------------------------------------
*/
// Map<KeyType, ValueType>

Map<String, String> users =new Map<String, String>();
System.debug('users → ' + users);

// Add elements using put(key, value)
users.put('john', 'admin123');
System.debug('users → ' + users);
users.put('jessy', 'krish234');
System.debug('users → ' + users);
users.put('jennifer', 'joker123');
System.debug('users → ' + users);
users.put('karthik', 'joker123');
System.debug('users → ' + users);

// Try inserting duplicate key-value pairs
users.put('jennifer', 'joker123');
System.debug('users → ' + users); // No change, same value

// Try inserting same key with new value
users.put('karthik', 'batman@123');
System.debug('users → ' + users);
// ✔ Conclusion: Map keys are unique. If key exists, new value replaces old one.

/*
users.get(2);
❌ ERROR:
get() method requires a key of the same type (String in this case),
not an index like in a List.
*/

// Retrieve values using keys
System.debug('Password of john → ' + users.get('john'));
System.debug('Password of jessy → ' + users.get('jessy'));
System.debug('Password of karthik → ' + users.get('karthik'));
System.debug('Password of jennifer → ' + users.get('jennifer'));

// Try retrieving value of a non-existent key
System.debug('Password of batman → ' + users.get('batman')); // Returns null

// Check if key exists
System.debug('Batman Exists → ' + users.containsKey('batman'));
System.debug('jessy Exists → ' + users.containsKey('jessy'));
