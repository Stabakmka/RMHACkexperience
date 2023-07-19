sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'RM868203.Miti',
            componentId: 'MitigationObjectPage',
            entitySet: 'Mitigation'
        },
        CustomPageDefinitions
    );
});