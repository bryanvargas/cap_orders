namespace company.orders;

entity Header {
    key ordernum   : Integer;
        itemno     : Association to many Items;
        customer   : Association to Customers
                         on customer.customerID = CustomerID;
        salesorg   : String(4);
        distchan   : String(2);
        division   : String(2);
        CustomerID : String;
}

entity Customers {
    key customerID : String(10);
        name       : String(40);
        parent     : Association to Header;
}

entity Items {
    itemno  : Integer;
    product : Association to Products;
    qty     : Integer;
    price   : Decimal(15, 2);
    parent  : Association to Header;
}

entity Products {
    productno : String(40);
    name      : String(50);
}
