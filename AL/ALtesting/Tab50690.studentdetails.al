table 50690 "student details"
{
    Caption = 'student details';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; id_no; Code[6])
        {
            Caption = 'id_no';
        }
        field(2; studen_name; Text[67])
        {
            Caption = 'studen_name';
        }
        field(3; student_age; Integer)
        {
            Caption = 'student_age';
        }
        field(4; student_gender; Option)
        {
            Caption = 'student_gender';
            OptionMembers = male,female;

        }
    }
    keys
    {
        key(PK; id_no)
        {
            Clustered = true;
        }
    }
}
