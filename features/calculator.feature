Feature: Calculator
As a user
I want to use the calculator
In order to sum numbers

Scenario: Add two valid numbers
 Given I have a calculator
 When I add 2 and 2
 Then the result should be 4

Scenario Outline: Add two valid numbers
 Given I have a calculator
 When I add <a> and <b>
 Then the result should be <result>
 
Examples: Sum
 | a | b | result  |
 | 1 | 2 | 3       |
