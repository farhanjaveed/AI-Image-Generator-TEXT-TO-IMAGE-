page 50999 "student card"
{
    ApplicationArea = All;
    Caption = 'student card';
    PageType = Card;
    SourceTable = "student table";
    UsageCategory = Lists;

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
                }
                field(Age; Rec.Age)
                {
                    ToolTip = 'Specifies the value of the Age field.';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ToolTip = 'Specifies the value of the Date of Birth field.';
                }
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ToolTip = 'Specifies the value of the Last Name field.';
                }
                field("Student ID"; Rec."Student ID")
                {
                    ToolTip = 'Specifies the value of the Student ID field.';
                }
                field(id; Rec.id)
                {
                    ToolTip = 'Specifies the value of the id field.';
                }
                field(gender; Rec.gender)
                {
                    ToolTip = 'Specifies the value of the gender field.';
                }
                field(name; Rec.name)
                {
                    ToolTip = 'Specifies the value of the name field.';
                }
                field(roll_no; Rec.roll_no)
                {
                    ToolTip = 'Specifies the value of the roll_no field.';
                }
                field(sub1marks; Rec.sub1marks)
                {
                    ToolTip = 'Specifies the value of the sub1marks field.';
                }
                field(sub2marks; Rec.sub2marks)
                {
                    ToolTip = 'Specifies the value of the sub2marks field.';
                }
                field(sub3marks; Rec.sub3marks)
                {
                    ToolTip = 'Specifies the value of the sub3marks field.';
                }
            }
        }
    }
    trigger OnClosePage()
    begin
        sum := sub1marks + sub2marks + sub3marks;
        Message('sum %1,%2,%3 are %4', sub1marks, sub2marks, sub3marks, sum);
    end;

    var
        sub1marks: Decimal;
        sub2marks: Decimal;
        sub3marks: Decimal;
        sum: Decimal;
}