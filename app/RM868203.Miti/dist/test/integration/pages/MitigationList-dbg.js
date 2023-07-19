sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'RM868203.Miti',
            componentId: 'MitigationList',
            entitySet: 'Mitigation'
        },
        CustomPageDefinitions
    );
});