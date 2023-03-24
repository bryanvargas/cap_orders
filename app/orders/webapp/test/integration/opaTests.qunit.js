sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'company/app/orders/test/integration/FirstJourney',
		'company/app/orders/test/integration/pages/OrdersList',
		'company/app/orders/test/integration/pages/OrdersObjectPage',
		'company/app/orders/test/integration/pages/OrderitemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrdersList, OrdersObjectPage, OrderitemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('company/app/orders') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrdersList: OrdersList,
					onTheOrdersObjectPage: OrdersObjectPage,
					onTheOrderitemsObjectPage: OrderitemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);