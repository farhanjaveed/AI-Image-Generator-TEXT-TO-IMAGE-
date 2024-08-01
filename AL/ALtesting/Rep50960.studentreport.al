report 50960 "student report"
{
    ApplicationArea = All;
    Caption = 'student report';
    UsageCategory = Lists;
    DefaultLayout = Word;
    WordLayout = 'layout/studentreport.docx';
    dataset
    {
        dataitem(studenttable; "student table")
        {

            column(student_no; "roll_no") { }

            column(student_name; "name") { }

            column(student_address; "address") { }

            column(student_gender; "gender") { }

            column(student_marks1; "sub1marks") { }

            column(student_marks2; "sub2marks") { }

            column(student_marks3; "sub3marks") { }

            column("Student_ID"; "Student ID")
            { }
            column("First_Name"; "First Name")
            {
            }
            column("Last_Name"; "Last Name")
            {
            }
            column("Date_of_Birth"; "Date of Birth")
            {
            }
            column("Age"; "Age")
            {

            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Group)
                {
                    Caption = 'Student Report';
                    field("Student ID"; studenttable."Student ID")
                    {
                        ApplicationArea = All;
                    }
                    field("First Name"; studenttable."First Name")
                    {
                        ApplicationArea = All;
                    }
                    field("Last Name"; studenttable."Last Name")
                    {
                        ApplicationArea = All;
                    }
                    field("Date of Birth"; studenttable."Date of Birth")
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
    }

    trigger OnInitReport()
    begin

        message('the student data is displayed');
    end;

    trigger OnPostReport()
    begin
        Message('the details of teh student');

    end;
}