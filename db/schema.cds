namespace RM868203;

using { bupa } from '../srv/external/bupa.cds';

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Risks : managed
{
    key ID : UUID
        @Core.Computed;
    title : String(100);
    prio : String(5);
    description : String(100);
    impact : Integer;
    criticality : Integer;
    miti : Association to one Mitigation;
    supplier : Association to one bupa.A_BusinessPartner;
}

entity Mitigation : managed
{
    key ID : UUID
        @Core.Computed;
    description : String(100);
    owner : String(100);
    timeline : String(100);
    risks : Association to many Risks on risks.miti = $self;
}
