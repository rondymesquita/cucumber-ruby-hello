Given /^I have turned on a vending machine$/ do
  @machine = VendingMachine.new
end

Then /^it displays '(.*)'$/ do |display|
  @machine.display.should == display
end

