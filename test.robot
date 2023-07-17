*** Settings ***
Documentation   Sample Robot Framework test for adding two numbers
Library         OperatingSystem
Library         BuiltIn

*** Test Cases ***
Addition Test
    [Documentation]   Test the addition of two numbers
    [Tags]            AddTest
    ${num1}=          Set Variable    10
    ${num2}=          Set Variable    20
    ${sum}=           Evaluate        ${num1} + ${num2}
    ${sum_str}=       Convert To String    ${sum}
    Should Be Equal   ${sum_str}    30
