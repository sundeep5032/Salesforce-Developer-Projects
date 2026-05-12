/*SECTION 4: CONSTANTS (final keyword)
------------------------------------
*/
// final → value cannot be changed after initialization

final Decimal TAX_RATE = 18.5;
System.debug('Tax Rate → ' + TAX_RATE);
/*
    NOTE:
        TAX_RATE = 20;  // ❌ Compile-time error
        Reason:
        Final variables are immutable.
*/
