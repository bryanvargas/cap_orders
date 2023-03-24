sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'company.app.orders',
            componentId: 'OrderitemsObjectPage',
            entitySet: 'Orderitems'
        },
        CustomPageDefinitions
    );
});