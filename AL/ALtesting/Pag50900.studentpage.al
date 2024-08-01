page 50900 "student page"
{
    ApplicationArea = All;
    Caption = 'student page';
    PageType = ListPart;
    SourceTable = "student table";
    UsageCategory = Lists;
    Editable = true;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(address; Rec.address)
                {
                    ToolTip = 'Specifies the value of the address field.';
                    ApplicationArea = all;
                }
                field(gender; Rec.gender)
                {
                    ToolTip = 'Specifies the value of the gender field.';
                    ApplicationArea = all;
                }
                field(id; Rec.id)
                {
                    ToolTip = 'Specifies the value of the id field.';
                    ApplicationArea = all;
                }
                field(name; Rec.name)
                {
                    ToolTip = 'Specifies the value of the name field.';
                    ApplicationArea = all;
                }
                field(roll_no; Rec.roll_no)
                {
                    ToolTip = 'Specifies the value of the roll_no field.';
                    ApplicationArea = all;
                }
                field(sub1marks; sub1marks)
                {
                    ToolTip = 'Specifies the value of the sub1marks field.';
                    ApplicationArea = all;
                }
                field(sub2marks; sub2marks)
                {
                    ToolTip = 'Specifies the value of the sub2marks field.';
                    ApplicationArea = all;
                }
                field(sub3marks; sub3marks)
                {
                    ToolTip = 'Specifies the value of the sub3marks field.';
                    ApplicationArea = all;
                }
            }
        }
    }
    trigger OnClosePage()
    begin
        total_marks := sub1marks + sub2marks + sub3marks;
        Message('the sum of all sub1marks + sub2marks + sub3marks  %1 %2 %3 are %4', sub1marks, sub2marks, sub3marks, total_marks);
    end;

    var
        sub1marks: decimal;
        sub2marks: decimal;
        sub3marks: decimal;
        total_marks: decimal;
        sum: decimal;

}

