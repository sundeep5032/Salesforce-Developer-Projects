// 🔹 SECTION 6: Why Lists (LIMIT Problem)
// ----------------------------------------
// Inserting 200 Contacts using a loop (not bulkified)

for (Integer i = 1; i <= 200; i++) {
    insert new Contact(LastName = 'Test_' + i);
}
// Error: System.LimitException: Too many DML statements: 151
