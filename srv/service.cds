using { bupa } from './external/bupa.cds';

using { RM868203 as my } from '../db/schema';

using RM868203 from '../db/schema';

@path : 'service/RM868203'
service RM868203Service
{
    annotate Mitigation with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'RiskViewer' ] },
        { grant : [ '*' ], to : [ 'RiskManager' ] }
    ];

    annotate Risks with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'RiskViewer' ] },
        { grant : [ '*' ], to : [ 'RiskManager' ] }
    ];

    @odata.draft.enabled
    entity Risks as
        projection on my.Risks;

    @odata.draft.enabled
    entity Mitigation as
        projection on my.Mitigation;

    entity A_Supplier as projection on bupa.A_BusinessPartner
    {
        BusinessPartner,
        BusinessPartnerFullName,
        BusinessPartnerIsBlocked
    };
}

annotate RM868203Service with @requires :
[
    'authenticated-user'
];
