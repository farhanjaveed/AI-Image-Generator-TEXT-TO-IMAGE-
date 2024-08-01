page 50700 "student dept"
{
    ApplicationArea = All;
    Caption = 'student dept';
    PageType = Card;
    SourceTable = "student details";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {


            group(General)
            {
                Caption = 'General';

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
                field(age1; age1)
                {
                    ToolTip = 'Specifies the value of the student_gender field.';
                    ApplicationArea = all;
                }
                field(age2; age2)
                {
                    ToolTip = 'Specifies the value of the student_gender field.';
                    ApplicationArea = all;
                }
                field(age3; age3)
                {
                    ToolTip = 'Specifies the value of the student_gender field.';
                    ApplicationArea = all;
                }

            }
        }
    }
    trigger OnNextRecord(Steps: Integer): Integer
    begin
        if (age1 < 1) then
            message('the age must be more than one')
        else
            if (age2 < 1) then
                message('the age must be more than one')
            else
                if (age3 < 1) then
                    message('the age must be more than one')
                else
                    if (age1 > 100) then
                        message('the age must be 100 or lesser')
                    else
                        if (age2 > 100) then
                            message('the age must be 100 or lesser')
                        else
                            if (age3 > 100) then
                                message('the age must be 100 or lesser');
    end;

    trigger OnclosePage()
    begin

        if (age1 < age2) and (age2 > age3) then
            Message('age2 is greater which is  %1', age2)
        else
            if (age2 < age1) and (age3 < age1) then
                Message('age1 is greater which is %1', age1)
            else
                message('age3 is greater which is %1', age3);
    end;

    var
        max: Decimal;
        age1: decimal;
        age2: decimal;
        age3: Decimal;

}