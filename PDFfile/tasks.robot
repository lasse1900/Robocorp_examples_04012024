*** Settings ***
Documentation       Template robot main suite.

Library    RPA.PDF   
Library    RPA.Excel.Files


*** Variables ***
# ${htmltable}    <table><tr><th width="50%">ID</th><th width="50%">Name</th></tr>
${htmltable}    <table><tr><th>ID</th><th>Name</th></tr>

*** Tasks ***
main
    # Open Workbook    PDFfile\\input\\students.xlsx
    Open Workbook    input/students.xlsx
    ${students}    Read Worksheet As Table    header=True 
    Close Workbook

    FOR    ${student}    IN    @{students}
        ${htmltable}    Set Variable    ${htmltable}<tr><th>${student}[ID]</th><th>${student}[Name]</th></tr>
    END

    ${htmltable}    Set Variable    ${htmltable}</table>

    # Html To Pdf    ${htmltable}    PDFfile\\output\\students.pdf
    Html To Pdf    ${htmltable}    output/students5.pdf

