*** Settings ***
Library    ../TestData1/ReadData.py

*** Keywords ***
Read Number of Rows
    [Arguments]    ${sheetname}
    ${maxrows}=    get_no_rows    ${sheetname}
    [Return]     ${maxrows}

Read Excel Data of Cell
    [Arguments]    ${sheetname}     ${row}      ${cell}
    ${celldata}=    fetch_cell_data     ${sheetname}     ${row}      ${cell}
    [Return]     ${celldata}