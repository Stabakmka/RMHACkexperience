sap.ui.define(["sap/ui/test/opaQunit"],function(i){"use strict";var t={run:function(){QUnit.module("First journey");i("Start application",function(i,t,e){i.iStartMyApp();e.onTheMitigationList.iSeeThisPage()});i("Navigate to ObjectPage",function(i,t,e){t.onTheMitigationList.onFilterBar().iExecuteSearch();e.onTheMitigationList.onTable().iCheckRows();t.onTheMitigationList.onTable().iPressRow(0);e.onTheMitigationObjectPage.iSeeThisPage()});i("Teardown",function(i,t,e){i.iTearDownMyApp()})}};return t});
//# sourceMappingURL=FirstJourney.js.map