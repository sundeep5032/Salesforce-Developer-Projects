/*
🔹 SECTION 6: Accessing keys and values from a Map
---------------------------------------------------
*/
// Map can also be initialized with key-value pairs like below.

Map<String, String> users = new Map<String, String>{
    'john'     => 'admin123',
    'jessy'    => 'krish234',
    'jennifer' => 'joker123',
    'karthik'  => 'joker123'
};
System.debug('users → ' + users);

/*
for(String x: users){
    System.debug(x);
}
❌ ERROR:
You cannot iterate directly over a Map.
*/
// Retrieve all keys and values separately
Set<String> usernames = users.keySet();
System.debug('usernames → ' + usernames);

List<String> passwords = users.values();
System.debug('passwords → ' + passwords);

// Iterate and printing username-password pairs
for(String username : usernames){
    System.debug('Password of ' + username + ' → ' + users.get(username));
}
