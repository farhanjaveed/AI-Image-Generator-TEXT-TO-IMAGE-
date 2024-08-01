page 50150 "new_page"
{
    ApplicationArea = All;
    Caption = 'new page';
    PageType = Card;
    SourceTable = "new table";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(object_id; Rec.object_id)
                {
                    ToolTip = 'Specifies the value of the object_id field.';
                }
                field(object_name; Rec.object_name)
                {
                    ToolTip = 'Specifies the value of the object_name field.';
                }
            }
            part(studentpage; "student page")
            {
                ApplicationArea = all;
            }
        }
    }

    trigger OnOpenPage()
    var
        student: Record "student table";
        total: Decimal;
    begin
        total := 0;
        total := student.sub1marks + student.sub2marks + student.sub3marks;
    end;
}
