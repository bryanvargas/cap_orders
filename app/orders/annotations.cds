using CatalogService as service from '../../srv/ord-service';

annotate service.Orders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ordernum',
            Value : ordernum,
        },
        {
            $Type : 'UI.DataField',
            Label : 'salesorg',
            Value : salesorg,
        },
        {
            $Type : 'UI.DataField',
            Label : 'distchan',
            Value : distchan,
        },
        {
            $Type : 'UI.DataField',
            Label : 'division',
            Value : division,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CustomerID',
            Value : CustomerID,
        },
    ]
);
annotate service.Orders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ordernum',
                Value : ordernum,
            },
            {
                $Type : 'UI.DataField',
                Label : 'salesorg',
                Value : salesorg,
            },
            {
                $Type : 'UI.DataField',
                Label : 'distchan',
                Value : distchan,
            },
            {
                $Type : 'UI.DataField',
                Label : 'division',
                Value : division,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerID',
                Value : CustomerID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
