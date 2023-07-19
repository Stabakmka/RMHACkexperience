using RM868203Service as service from '../../srv/service';

annotate service.Mitigation with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'owner',
            Value : owner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'timeline',
            Value : timeline,
        },
    ]
);
annotate service.Mitigation with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'owner',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'timeline',
                Value : timeline,
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Risks',
            ID : 'Risks',
            Target : 'risks/@UI.LineItem#Risks',
        },
    ]
);
annotate service.Mitigation with @(
    UI.FieldGroup #Risk : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Risks with @(
    UI.LineItem #Risks : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },{
            $Type : 'UI.DataField',
            Value : title,
            Label : 'title',
        },{
            $Type : 'UI.DataField',
            Value : description,
            Label : 'description',
        },{
            $Type : 'UI.DataField',
            Value : impact,
            Label : 'impact',
        },{
            $Type : 'UI.DataField',
            Value : prio,
            Label : 'prio',
        },]
);
