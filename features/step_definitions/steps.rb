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

Then /^I debug$/ do
  debugger
  0
end

Given /^the server route GET with:$/ do |table|
  #getting values 
  url = table.hashes[0][:url]
  params = table.hashes[0][:params]
  expected = table.hashes[0][:expected]
#  puts JSON(params)["text"]
  #there is params?  
  if params.empty?
    result = RestClient.get(url)
  else
    result = RestClient.get(url, {:params => JSON(params)})
  end  

  #the result is a json
  begin
    result = JSON.parse(result)
    expected = JSON.parse(expected)
    puts "JSON"
  rescue
    puts "NOT A JSON"
  end
  
  #assert
  expect(result).to eq(expected)
      
end

Given /^the server route POST with:$/ do |table|
  #getting values 
  url = table.hashes[0][:url]
  params = table.hashes[0][:params]
  expected = table.hashes[0][:expected]
#  puts JSON(params)["text"]

  #there is params?  
  if params.empty?
    result = RestClient.post(url)
  else
    result = RestClient.post(url, {:params => JSON(params)})
  end  

  #the param is a json
  begin
    result = JSON.parse(result)
    expected = JSON.parse(expected)
    puts "It is a json"
  rescue
    puts "Is not a json"
  end
  
  #assert
  expect(result).to eq(expected)
      
end

Given /^the server route GET '(.*?)' will return:$/ do |route, table|
  result = RestClient.get(route).gsub("\n","")
  table = table.hashes[0][:result]
  
  puts "=== Table"
  puts table 
  puts "=== Result"
  puts result
  
  expect(table).to eq(result)
  
end