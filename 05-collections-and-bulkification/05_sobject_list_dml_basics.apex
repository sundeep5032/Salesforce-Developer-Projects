/* 🔹 SECTION 5: Demonstrating List of SObjects
---------------------------------------------
*/
// Working with Opportunity (sObject) inside a list

List<Opportunity> orders = new List<Opportunity>();
System.debug('orders (initially empty) → ' + orders);

// Adding records to the list before DML
Opportunity o1 = new Opportunity();
o1.Name = 'Order-0001';
o1.CloseDate = Date.today() + 1;
o1.StageName = 'Prospecting';
orders.add(o1);
System.debug('orders after adding o1 → ' + orders);

// Using parameterized constructor
Opportunity o2 = new Opportunity(
    Name = 'Order-0002',
    CloseDate = Date.today() + 2,
    StageName = 'Value Proposition'
);
orders.add(o2);
System.debug('orders after adding o2 → '+orders);

// Inline object creation and addition
orders.add(
    new Opportunity(
        Name = 'Order-0003',
        CloseDate = Date.today() + 3,
        StageName = 'Prospecting'
    )
);
System.debug('orders after adding o3 → '+orders);
insert orders;
System.debug('orders after inserting → '+orders);
