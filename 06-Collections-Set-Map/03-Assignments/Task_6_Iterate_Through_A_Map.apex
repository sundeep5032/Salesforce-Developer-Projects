/*
🧪 Task 7 – Iterate Through a Map
----------------------------------
27. Using the below map:
  Print all keys using keySet().
  Print all values using values().
  Use a for loop to print:
    Username → Password
*/
Map<String, String> userMap = new Map<String, String>{
    'john' => 'admin123',
    'maya' => 'krish234',
    'raju' => 'joker123',
    'neha' => 'admin123'
}; 

// Print all keys using keySet()
System.debug('All Usernames (Keys): ' + userMap.keySet());

// Print all values using values()
System.debug('All Passwords (Values): ' + userMap.values());

// Use a for loop to print: Username → Password
for(String username: userMap.keySet()){
    System.debug(username + ' → ' + userMap.get(username));
    
}
