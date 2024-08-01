table 50100 "new table"
{
    Caption = 'new table';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; object_id; Code[16])
        {
            Caption = 'object_id';
        }
        field(2; object_name; Text[10])
        {
            Caption = 'object_name';
        }
    }
    keys
    {
        key(PK; object_id)
        {
            Clustered = true;
        }
    }
}
