Feature: Vending Machine Accepts Coins
  As a vendor
  I want a vending machine that accepts coins
  So that I can collect money from the customer

Background:
  Given I have turned on a vending machine

Scenario: Displays INSERT COIN when no coins are inserted
  Then it displays 'INSERT COIN'

Scenario Outline: Displays values of coins when inserted
  When I insert a '<coin>'
  Then it displays '<display>'

Examples:
  | coin    | display |
  | nickel  |  0.05   |
  | dime    |  0.10   |
  | quarter |  0.25   |
