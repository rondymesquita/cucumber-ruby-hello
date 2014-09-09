require 'rest_client'
require './lib/calculatorClass'
require 'json'
require 'debugger';

@calculator

Given /^I have a calculator$/ do
  @calculator = Calculator.new
end

When /^I add (\d+) and (\d+)$/ do |value1, value2|
  @calculator.add(value1, value2)
end

Then /^the result should be (\d+)$/ do |result|
  expect(result.to_i).to eq(@calculator.result)
end

Given /^I wait for (\d+) seconds?$/ do |n|
  sleep(n.to_i)
end
