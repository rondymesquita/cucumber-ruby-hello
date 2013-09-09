Given /^I have turned on a vending machine$/ do
  @machine = VendingMachine.new
end

Then /^it displays '(.*)'$/ do |display|
  @machine.display.should == display
end

When /^I insert a '(.*)'$/ do |coin|
  @machine.insert_coin coin.to_sym
end

