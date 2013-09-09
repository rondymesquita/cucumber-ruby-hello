Feature: Vending Machine Accepts Coins
  As a vendor
  I want a vending machine that accepts coins
  So that I can collect money from the customer

Scenario: Displays INSERT COIN when no coins are inserted
  Given I have turned on a vending machine
  Then it displays 'INSERT COIN'
