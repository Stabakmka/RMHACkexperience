sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'RM868203/RMapp/test/integration/FirstJourney',
		'RM868203/RMapp/test/integration/pages/RisksList',
		'RM868203/RMapp/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('RM868203/RMapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);