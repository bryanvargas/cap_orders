using {company.orders as ord} from '../db/schema';

service CatalogService {
    entity Orders     as
        select from ord.Header {
            *,
            customer.name as name
        };

    entity Orderitems as
        select from ord.Items {
            *
        };

    entity Customers  as select from ord.Customers;
    entity Products   as select from ord.Products;

}
