sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'RM868203/Miti/test/integration/FirstJourney',
		'RM868203/Miti/test/integration/pages/MitigationList',
		'RM868203/Miti/test/integration/pages/MitigationObjectPage',
		'RM868203/Miti/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, MitigationList, MitigationObjectPage, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('RM868203/Miti') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMitigationList: MitigationList,
					onTheMitigationObjectPage: MitigationObjectPage,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);