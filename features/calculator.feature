Feature: Calculator

@skip
Scenario: Add two valid numbers
 Given I have a calculator
 When I add 2 and 2
 Then the result should be 4

@skip 
Scenario Outline: Add two valid numbers
 Given I have a calculator
 When I add <a> and <b>
 Then the result should be <result>
 
Examples: Sum
 | a | b | result  |
 | 1 | 2 | 3       |

@skip    
Scenario: MD5 test
  Given the server route GET with:
  |url|params|expected|
  |http://md5.jsontest.com/|{"text":"beep"}|{"md5": "1284e53a168a5ad955485a7c83b10de0","original": "beep"}|

@skip  
Scenario: Hello test
  Given the server route GET with:
  |	url | params  | expected  |
  |	http://172.16.4.45:8889/Mobile/Hello  |     | Hello |
  
Scenario: open browser
Given a website
Then I should see the title
And I wait for 5 seconds
Then I close the browser
  