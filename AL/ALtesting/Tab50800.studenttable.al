table 50800 "student table"
{
    Caption = 'student table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; id; Code[6])
        {
            Caption = 'id';
        }
        field(2; name; Text[18])
        {
            Caption = 'name';
        }
        field(3; roll_no; Integer)
        {
            Caption = 'roll_no';
        }
        field(4; address; Text[16])
        {
            Caption = 'address';
        }
        field(5; gender; Option)
        {
            Caption = 'gender';
            OptionMembers = male,female,others;
        }
        field(6; "Student ID"; Code[10])
        {
            DataClassification = CustomerContent;
        }
        field(7; "First Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(8; "Last Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(9; "Date of Birth"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(10; "Age"; Integer)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(11; sub1marks; Decimal)
        {
            Caption = 'sub1marks';
        }
        field(12; sub2marks; Decimal)
        {
            Caption = 'sub2marks';
        }
        field(13; sub3marks; Decimal)
        {
            Caption = 'sub3marks';
        }
    }

    keys
    {
        key(PK; id)
        {
            Clustered = true;
        }
    }
    trigger OnModify()
    begin
        CalculateAge();
    end;

    trigger OnInsert()
    begin
        CalculateAge();
    end;


    procedure CalculateAge()
    var
        CurrentDate: Date;
    begin
        CurrentDate := Today;
        newProcedure(CurrentDate);
        if Date2DMY(CurrentDate, 2) < Date2DMY("Date of Birth", 2) then
            "Age" -= 1
        else if Date2DMY(CurrentDate, 2) = Date2DMY("Date of Birth", 2) then
            if Date2DMY(CurrentDate, 3) < Date2DMY("Date of Birth", 3) then
                "Age" -= 1;
    end;

    local procedure newProcedure(var CurrentDate: Date)
    begin
        "Age" := Date2DMY(CurrentDate, 1) - Date2DMY("Date of Birth", 1);
    end;
}