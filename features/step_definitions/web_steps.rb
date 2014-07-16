require 'watir-webdriver'
require "singleton"

class Browser < Watir::Browser
  include Singleton
end

Given /^a website$/ do
  Browser.instance.goto 'http://google.com'
end

Then /^I should see the title$/ do
  field = Browser.instance.text_field(:name, "q")
  field.set "Transformers"
  button = Browser.instance.button(:id, "gbqfba")
  button.click
  sleep 5
end

Then /^I close the browser$/ do
  Browser.instance.close
end

