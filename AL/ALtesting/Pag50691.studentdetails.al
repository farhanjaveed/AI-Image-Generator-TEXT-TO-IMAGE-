page 50691 "student details"
{
    ApplicationArea = All;
    Caption = 'student details';
    PageType = Card;
    SourceTable = "student details";
    UsageCategory = lists;
    Editable = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id_no; Rec.id_no)
                {
                    ToolTip = 'Specifies the value of the id_no field.';
                    ApplicationArea = all;
                }
                field(studen_name; Rec.studen_name)
                {
                    ToolTip = 'Specifies the value of the studen_name field.';
                    ApplicationArea = all;
                }
                field(student_age; Rec.student_age)
                {
                    ToolTip = 'Specifies the value of the student_age field.';
                    ApplicationArea = all;
                }
                field(student_gender; Rec.student_gender)
                {
                    ToolTip = 'Specifies the value of the student_gender field.';
                    ApplicationArea = all;
                }
            }
        }
    }
}
